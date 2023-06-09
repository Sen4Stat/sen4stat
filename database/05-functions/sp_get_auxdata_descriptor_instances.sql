-- DROP FUNCTION public.sp_get_auxdata_descriptor_instances(smallint, smallint, integer);
CREATE OR REPLACE FUNCTION public.sp_get_auxdata_descriptor_instances(
	_site_id smallint,
	_season_id smallint,
	_year integer)
    RETURNS TABLE(site_id smallint, auxdata_descriptor_id smallint, year integer, season_id smallint, auxdata_file_id smallint, file_name character varying, parameters json) 
    LANGUAGE 'plpgsql'
    COST 100
    STABLE PARALLEL UNSAFE
    ROWS 1000
AS $BODY$

BEGIN 
	RETURN QUERY 

	WITH last_ops AS (
		SELECT f.id, COALESCE(MAX(o.operation_order), 0) AS operation_order 
			FROM auxdata_file f LEFT JOIN auxdata_operation o on o.auxdata_file_id = f.id
			GROUP BY f.id)
	SELECT _site_id as site_id, d.id AS auxdata_descriptor_id, 
		CASE WHEN d.unique_by = 'year' THEN _year ELSE null::integer END AS "year", 
		CASE WHEN d.unique_by = 'season' THEN _season_id ELSE null::smallint END AS season_id, 
		f.id AS auxdata_file_id, null::character varying AS "file_name",
		o.parameters
	FROM 	auxdata_descriptor d
		JOIN auxdata_file f ON f.auxdata_descriptor_id = d.id
		JOIN last_ops l ON l.id = f.id
		LEFT JOIN auxdata_operation o ON o.auxdata_file_id = f.id AND o.operation_order = l.operation_order
	WHERE	d.id NOT IN (SELECT s.auxdata_descriptor_id from site_auxdata s WHERE s.auxdata_descriptor_id = d.id AND s.site_id = _site_id AND ((d.unique_by = 'year' AND s.year = _year) OR (d.unique_by = 'season' AND s.season_id = _season_id)))
	ORDER BY d.id, f.id;
END

$BODY$;

ALTER FUNCTION public.sp_get_auxdata_descriptor_instances(smallint, smallint, integer)
    OWNER TO admin;
