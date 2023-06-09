begin transaction;

do $migration$
declare _statement text;
begin
    raise notice 'running migrations';

    if exists (select * from information_schema.tables where table_schema = 'public' and table_name = 'meta') then
        if exists (select * from meta where version = '1.6.2') then
            raise notice 'upgrading from 1.6.2 to 1.7';

            raise notice 'applying 06122c0b0a8294b27f6b18fe899609b0118ff2b2';
            _statement := 'update config_metadata set type = ''string'' where key = ''processor.l4a.reference_data_dir'';';
            raise notice '%', _statement;
            execute _statement;

            raise notice 'applying 00d4d2597c599f0d30cbc7c5b2a7662c45126db1';
            if not exists (select * from downloader_status where status_description = 'processing_failed') then
                raise notice 'INSERT INTO downloader_status VALUES (6, ''processing_failed'');';
                INSERT INTO downloader_status VALUES (6, 'processing_failed');
            end if;

            raise notice 'applying a69a58c95e13befb36d260dd454a09a36f183cbe';
            _statement := 'delete from config where key = ''executor.module.path.ogr2ogr''';
            raise notice '%', _statement;
            execute _statement;

            _statement := 'delete from config_metadata where key = ''executor.module.path.ogr2ogr''';
            raise notice '%', _statement;
            execute _statement;
            
            _statement := 'delete from config where key = ''crop-mask-features-with-insitu''';
            raise notice '%', _statement;
            execute _statement;

            _statement := 'delete from config_metadata where key = ''crop-mask-features-with-insitu''';
            raise notice '%', _statement;
            execute _statement;
            
            raise notice 'applying 3e18b6c40b38be4686f50f1430ea23f760cf2421';
            _statement := 'delete from config where key = ''executor.module.path.gdalwarp''';
            raise notice '%', _statement;
            execute _statement;

            _statement := 'delete from config_metadata where key = ''executor.module.path.gdalwarp''';
            raise notice '%', _statement;
            execute _statement;
            
            if not exists (select * from config_metadata where key = 'processor.l3b.mono_date_ndvi_only') then
                _statement := $str$
                INSERT INTO config_metadata VALUES ('processor.l3b.mono_date_ndvi_only', 'L3B processor will generate only NDVI', 'int', false, 4);
                $str$;
                raise notice '%', _statement;
                execute _statement;
            end if;
            if not exists (select * from config where key = 'processor.l3b.mono_date_ndvi_only' and site_id is null) then
                _statement := $str$
                INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.mono_date_ndvi_only', NULL, '0', '2017-10-24 14:56:57.501918+02');
                $str$;
                raise notice '%', _statement;
                execute _statement;
            end if;
            
            if not exists (select * from config_metadata where key = 'processor.l3b.ndvi.tiles_filter') then
                _statement := $str$
                INSERT INTO config_metadata VALUES ('processor.l3b.ndvi.tiles_filter', 'L3B NDVI only processor tiles filter', 'string', false, 4);
                $str$;
                raise notice '%', _statement;
                execute _statement;
            end if;
            if not exists (select * from config where key = 'processor.l3b.ndvi.tiles_filter' and site_id is null) then
                _statement := $str$
                INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.ndvi.tiles_filter', NULL, '', '2017-10-24 14:56:57.501918+02');
                $str$;
                raise notice '%', _statement;
                execute _statement;
            end if;
            

            _statement := 'update meta set version = ''1.7'';';
            raise notice '%', _statement;
            execute _statement;
        end if;
    end if;

    raise notice 'complete';
end;
$migration$;

commit;
