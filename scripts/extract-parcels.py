#!/usr/bin/env python
from __future__ import print_function

import argparse
import csv
from datetime import date
import psycopg2
from psycopg2.sql import SQL, Literal, Identifier
import psycopg2.extras
try:
    from configparser import ConfigParser
except ImportError:
    from ConfigParser import ConfigParser


class Config(object):
    def __init__(self, args):
        parser = ConfigParser()
        parser.read([args.config_file])

        self.host = parser.get("Database", "HostName")
        self.port = int(parser.get("Database", "Port", vars={"Port": "5432"}))
        self.dbname = parser.get("Database", "DatabaseName")
        self.user = parser.get("Database", "UserName")
        self.password = parser.get("Database", "Password")

        self.site_id = args.site_id


def get_site_name(conn, site_id):
    with conn.cursor() as cursor:
        query = SQL(
            """
            select short_name
            from site
            where id = {}
            """
        )
        site = Literal(site_id)
        query = query.format(site)
        print(query.as_string(conn))

        cursor.execute(query)
        rows = cursor.fetchall()
        conn.commit()
        return rows[0][0]


def main():
    parser = argparse.ArgumentParser(description="Crops and recompresses S1 L2A products")
    parser.add_argument('-c', '--config-file', default='/etc/sen2agri/sen2agri.conf', help="configuration file location")
    parser.add_argument('-s', '--site-id', type=int, help="site ID to filter by")
    parser.add_argument('-y', '--year', help="year")
    parser.add_argument('--lc', help="LC values", nargs='+', type=int, default=[1, 2, 3, 4])
    parser.add_argument('--min-s1-pix', help="minimum number of S1 pixels", type=int, default=1)
    parser.add_argument('--min-s2-pix', help="minimum number of S2 pixels", type=int, default=3)
    parser.add_argument('output', help="output file", default="parcels.csv")

    args = parser.parse_args()

    config = Config(args)

    with psycopg2.connect(host=config.host, port=config.port, dbname=config.dbname, user=config.user, password=config.password) as conn:
        site_name = get_site_name(conn, config.site_id)
        year = args.year or date.today().year
        lpis_table = "decl_{}_{}".format(site_name, year)
        lut_table = "lut_{}_{}".format(site_name, year)

        with conn.cursor() as cursor:
            query = SQL(
                """
                select lpis."NewID",
                    lpis."Area_meters" as "AREA",
                    lut."ctnuml4a" as "CTnum",
                    lpis."LC"
                from {} lpis
                inner join {} lut on lut.ctnum :: int = lpis."CTnum"
                where lpis."LC" = any({})
                and lpis."S1Pix" >= {}
                and lpis."S2Pix" >= {}
                and "GeomValid"
                and not "Duplic"
                and not "Overlap"
                order by "NewID"
                """)
            query = query.format(Identifier(lpis_table), Identifier(lut_table), Literal(args.lc), Literal(args.min_s1_pix), Literal(args.min_s2_pix))
            print(query.as_string(conn))

            with open(args.output, 'wb') as csvfile:
                writer = csv.writer(csvfile, quoting=csv.QUOTE_MINIMAL)

                cursor.execute(query)
                writer.writerow(['NewID', 'AREA', 'CTnum', 'LC'])
                for row in cursor:
                    writer.writerow(row)

            conn.commit()


if __name__ == "__main__":
    main()
