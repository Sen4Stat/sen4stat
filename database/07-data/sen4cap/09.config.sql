-- -----------------------------------------------------------
-- General keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('archiver.archive_path', NULL, '/mnt/archive/{site}/{processor}/', '2016-02-18 17:29:41.20487+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('archiver.max_age.l2a', NULL, '5', '2015-07-20 16:31:33.655476+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path', NULL, '/mnt/archive/orchestrator_temp/{job_id}/{task_id}-{module}', '2015-07-10 17:54:17.288095+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('http-listener.listen-port', NULL, '8082', '2015-07-03 13:59:21.338392+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('http-listener.root-path', NULL, '/srv/sen2agri-dashboard', '2015-07-03 13:58:57.734852+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('mail.message.batch.limit', NULL, '0','2020-07-22 19:52:23.560587+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('monitor-agent.disk-path', NULL, '/mnt/archive/', '2015-07-20 10:27:29.301355+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('monitor-agent.scan-interval', NULL, '60', '2015-07-20 10:28:08.27395+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('resources.working-mem', NULL, '1024', '2015-09-08 11:03:21.87284+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.lookup.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.object.storage.move.deleteAfter', NULL, 'false', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.object.storage.move.enabled', NULL, 'false', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.object.storage.move.product.types', NULL, '', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.reports.enabled', NULL, 'true', '2020-05-04 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.reports.interval', NULL, '24', '2020-05-04 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('scheduled.retry.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('site.path', NULL, '/usr/share/sen2agri/sen2agri-services/static','2020-07-22 19:52:22.841374+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('site.upload-path', NULL, '/mnt/upload/{site}', '2016-03-01 15:02:31.980394+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('site.url', NULL, ' file:///usr/share/sen2agri/sen2agri-services/static/ ','2020-07-22 19:52:22.42305+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('l8.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('s1.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('s2.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');

INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.parcels_product.parcel_id_col_name', NULL, 'NewID', '2019-10-11 16:15:00.0+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.parcels_product.parcels_csv_file_name_pattern', NULL, 'decl_.*_\d{4}.csv', '2019-10-11 16:15:00.0+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.parcels_product.parcels_optical_file_name_pattern', NULL, '.*_buf_5m.shp', '2019-10-11 16:15:00.0+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.parcels_product.parcels_sar_file_name_pattern', NULL, '.*_buf_10m.shp', '2019-10-11 16:15:00.0+02');


-- -----------------------------------------------------------
-- Executor/orchestrator/scheduler specific keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.http-server.listen-ip', NULL, '127.0.0.1', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.http-server.listen-port', NULL, '8084', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.listen-ip', NULL, '127.0.0.1', '2015-06-03 17:03:39.541136+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.listen-port', NULL, '7777', '2015-07-07 12:17:06.182674+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.resource-manager.name', NULL, 'slurm', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.wrapper-path', NULL, '/usr/bin/sen2agri-processor-wrapper', '2015-07-23 16:54:54.092462+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.wrp-executes-local', NULL, '1', '2015-06-03 17:03:39.541136+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.wrp-send-retries-no', NULL, '3600', '2015-06-03 17:03:39.541136+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.wrp-timeout-between-retries', NULL, '1000', '2015-06-03 17:03:39.541136+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.inter-proc-com-type', NULL, 'http', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.docker_add_mounts', NULL, '', '2021-01-21 10:23:12.993537+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.docker_image', NULL, 'sen4cap/processors:3.1.0', '2021-01-14 12:11:21.800537+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.export-product-launcher.use_docker', NULL, '0', '2021-01-20 11:44:25.330355+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.s4c-grassland-extract-products.use_docker', NULL, '0', '2021-01-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.s4c-grassland-gen-input-shp.use_docker', NULL, '0', '2021-01-18 14:41:25.651377+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.s4c-grassland-mowing.docker_image', NULL, 'sen4cap/grassland_mowing:3.0.0', '2021-02-19 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.s4c-grassland-mowing.use_docker', NULL, '1', '2021-01-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.s4c-l4a-extract-parcels.use_docker', NULL, '0', '2021-01-20 18:50:52.244303+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.use_docker', NULL, '1', '2021-01-14 12:11:21.800537+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('orchestrator.http-server.listen-ip', NULL, '127.0.0.1', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('orchestrator.http-server.listen-port', NULL, '8083', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.mdb3-input-tables-extract.docker_image', NULL, 'sen4cap/data-preparation:0.1', '2021-02-19 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.mdb3-input-tables-extract.use_docker', NULL, '1', '2021-01-18 14:43:00.720811+00');

-- -----------------------------------------------------------
-- Executor module paths
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.color-mapping', NULL, '/usr/bin/otbcli_ColorMapping', '2015-11-17 17:06:25.784583+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.compression', NULL, '/usr/bin/otbcli_Convert', '2015-11-17 17:06:34.7028+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.compute-confusion-matrix', NULL, '/usr/bin/otbcli_ComputeConfusionMatrix', '2015-08-12 17:09:22.060276+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.compute-image-statistics', NULL, '/usr/bin/otbcli_ComputeImagesStatistics', '2016-02-23 12:29:52.586902+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.compute-images-statistics', NULL, '/usr/bin/otbcli_ComputeImagesStatistics', '2015-08-12 17:09:17.216345+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.concatenate-images', NULL, '/usr/bin/otbcli_ConcatenateImages', '2015-09-07 10:20:52.117401+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.crop-mask-fused', NULL, 'CropMaskFused.py', '2015-12-17 14:25:14.193131+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.crop-type-fused', NULL, 'CropTypeFused.py', '2015-12-17 14:25:14.193131+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.dimensionality-reduction', NULL, 'otbcli_DimensionalityReduction', '2016-02-22 22:39:08.262715+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.end-of-job', NULL, '/usr/bin/true', '2016-01-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.export-product-launcher', NULL, '/usr/bin/export-product-launcher.py', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.files-remover', NULL, '/usr/bin/rm', '2015-08-24 17:44:38.29255+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.gdalbuildvrt', NULL, '/usr/local/bin/gdalbuildvrt', '2018-08-30 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.gdal_translate', NULL, '/usr/local/bin/gdal_translate', '2018-08-30 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.image-classifier', NULL, '/usr/bin/otbcli_ImageClassifier', '2015-08-12 17:09:20.418973+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.image-compression', NULL, '/usr/bin/otbcli_Convert', '2016-02-22 22:39:08.386406+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.l4b_cfg_import', NULL, 's4c_l4b_import_config.py', '2019-10-22 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.l4c_cfg_import', NULL, 's4c_l4c_import_config.py', '2019-10-22 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.l4c_practices_export', NULL, '/usr/bin/s4c_l4c_export_all_practices.py', '2019-10-22 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.l4c_practices_import', NULL, 's4c_l4c_import_practice.py', '2019-10-22 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.lpis_import', NULL, 'data-preparation.py', '2019-10-22 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.mdb-csv-to-ipc-export', NULL, 'csv_to_ipc.py', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.ogr2ogr',  NULL, '/usr/local/bin/ogr2ogr', '2019-10-18 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.s4c-crop-type', NULL, 'crop-type-wrapper.py', '2019-02-22 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.s4c-grassland-gen-input-shp',  NULL, '/usr/share/sen2agri/S4C_L4B_GrasslandMowing/Bin/generate_grassland_mowing_input_shp.py', '2019-10-18 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.s4c-grassland-extract-products', NULL, '/usr/share/sen2agri/S4C_L4B_GrasslandMowing/Bin/s4c-l4b-extract-products.py', '2021-01-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.s4c-l4a-extract-parcels', NULL, 'extract-parcels.py', '2021-01-15 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.mdb3-input-tables-extract', NULL, 's4c_mdb3_input_tables.py', '2021-01-15 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.mdb3-extract-markers', NULL, 'extract_mdb3_markers.py', '2021-01-15 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.lpis_list_columns', NULL, 'read_shp_cols.py', '2022-02-12 17:09:18.767175+03');


-- -----------------------------------------------------------
-- Downloader specific keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.l8.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.l8.forcestart', NULL, 'false', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.l8.max-retries', NULL, '3', '2016-03-15 15:44:22.03691+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.l8.query.days.back', NULL, '0', '2020-07-02 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.l8.write-dir', NULL, '/mnt/archive/dwn_def/l8/default', '2016-02-26 19:30:06.821627+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.max-cloud-coverage', NULL, '100', '2016-02-03 18:05:38.425734+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s1.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s1.forcestart', NULL, 'false', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s1.query.days.back', NULL, '0', '2020-07-02 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s1.write-dir', NULL, '/mnt/archive/dwn_def/s1/default/', '2016-07-20 20:05:00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s2.enabled', NULL, 'true', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s2.forcestart', NULL, 'false', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s2.max-retries', NULL, '3', '2016-03-15 15:44:14.118906+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s2.query.days.back', NULL, '0', '2020-07-02 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.s2.write-dir', NULL, '/mnt/archive/dwn_def/s2/default', '2016-02-26 19:26:49.986675+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.skip.existing', NULL, 'false', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.start.offset', NULL, '2', '2016-07-20 20:05:00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.timeout', NULL, '9000','2020-07-22 19:52:22.244592+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('downloader.use.esa.l2a', NULL, 'false', '2019-12-16 14:56:57.501918+02');

-- -----------------------------------------------------------
-- L2A processor Specific keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.l2a.name', NULL, 'L2A', '2015-06-03 17:02:50.028002+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.l2a.path', NULL, '/bin/false', '2015-07-20 16:31:23.208369+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.maja.gipp-path', NULL, '/mnt/archive/gipp/maja', '2016-02-24 18:12:16.464479+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.maja.remove-fre', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.maja.remove-sre', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.optical.cog-tiffs', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.optical.compress-tiffs', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.optical.max-retries', NULL, '3', '2020-09-15 16:02:27.164968+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.optical.num-workers', NULL, '4', '2020-09-07 14:36:37.906825+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.optical.output-path', NULL, '/mnt/archive/maccs_def/{site}/{processor}/', '2016-02-24 18:09:17.379905+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.optical.retry-interval', NULL, '1 day', '2020-09-07 14:36:37.906825+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.s2.implementation', NULL, 'maja', '2020-09-07 14:17:52.846794+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.sen2cor.gipp-path', NULL, '/mnt/archive/gipp/sen2cor', '2020-09-15 16:48:05.415193+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.srtm-path', NULL, '/mnt/archive/srtm', '2016-02-25 11:11:36.372405+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.swbd-path', NULL, '/mnt/archive/swbd', '2016-02-25 11:12:04.008319+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a.working-dir', NULL, '/mnt/archive/demmaccs_tmp/', '2016-02-25 17:31:06.01191+02');
insert into config(key, site_id, value, last_updated) VALUES ('processor.l2a.processors_image', NULL, 'sen4x/l2a-processors:0.2.3', '2021-04-19 16:30:00.0');
insert into config(key, site_id, value, last_updated) VALUES ('processor.l2a.sen2cor_image', NULL, 'sen4x/sen2cor:2.10.01-ubuntu-20.04', '2021-04-19 16:30:00.0');
insert into config(key, site_id, value, last_updated) VALUES ('processor.l2a.maja_image', NULL, 'sen4x/maja:4.5.4-centos-7', '2021-04-19 16:30:00.0');
insert into config(key, site_id, value, last_updated) VALUES ('processor.l2a.gdal_image', NULL, 'osgeo/gdal:ubuntu-full-3.4.1', '2021-04-19 16:30:00.0');
insert into config(key, site_id, value, last_updated) VALUES ('processor.l2a.l8_align_image', NULL, 'sen4x/l2a-l8-alignment:0.1.2', '2021-04-19 16:30:00.0');
insert into config(key, site_id, value, last_updated) VALUES ('processor.l2a.dem_image', NULL, 'sen4x/l2a-dem:0.1.3', '2021-04-19 16:30:00.0');

-- -----------------------------------------------------------
-- L2S1 processor Specific keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2s1.enabled', NULL, 'true', '2020-05-18 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2s1.parallelism', NULL, '1','2020-07-22 19:52:22.395661+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2s1.path', NULL, '/mnt/archive/{site}/l2a-s1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2s1.temporal.offset', NULL, '6','2020-07-22 19:52:22.42305+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2s1.work.dir', NULL, '/mnt/archive/s1_preprocessing_work_dir', '2017-10-24 14:56:57.501918+02');

-- -----------------------------------------------------------
-- LPIS configuration specific keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.lpis.lut_upload_path', NULL, '/mnt/archive/upload/LUT/{site}', '2019-10-11 16:15:00.0+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.lpis.path', NULL, '/mnt/archive/lpis/{site}/{year}', '2019-06-11 16:15:00.0+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.lpis.upload_path', NULL, '/mnt/archive/upload/lpis/{site}', '2019-10-11 16:15:00.0+02');

-- -----------------------------------------------------------
-- L3A Specific Keys
-- -----------------------------------------------------------

-- -----------------------------------------------------------
-- L3B Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('archiver.max_age.l3b', NULL, '1', '2015-06-02 11:39:45.99546+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.l3b.keep_job_folders', NULL, '0', '2016-03-09 16:41:20.194169+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.l3b.slurm_qos', NULL, 'qoslai', '2015-08-24 17:44:38.29255+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path.l3b', NULL, '/mnt/archive/orchestrator_temp/l3b/{job_id}/{task_id}-{module}', '2015-07-10 17:54:17.288095+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.cloud_optimized_geotiff_output', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_fapar', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_fcover', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_in_domain_flags', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_lai', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_ndvi', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_ndwi', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.filter.produce_brightness', NULL, '0', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.produce_mosaic', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.generate_models', NULL, '1', '2016-02-29 12:03:08.445828+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.l1c_availability_days', NULL, '20', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.global_bv_samples_file', NULL, '/usr/share/sen2agri/LaiCommonBVDistributionSamples.txt', '2016-02-29 14:08:07.963143+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.laibandscfgfile', NULL, '/usr/share/sen2agri/Lai_Bands_Cfgs_Belcam.cfg', '2016-02-16 11:54:47.223904+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.lut_path', NULL, '/usr/share/sen2agri/lai.map', '2016-02-29 14:08:07.963143+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.modelsfolder', NULL, '/mnt/archive/L3B_GeneratedModels/', '2016-02-16 11:54:47.123972+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.rsrcfgfile', NULL, '/usr/share/sen2agri/rsr_cfg.txt', '2016-02-16 11:54:47.223904+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.tiles_filter', NULL, '', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.use_inra_version', NULL, '1', '2017-10-24 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.lai.use_lai_bands_cfg', NULL, '1', '2016-02-16 11:54:47.223904+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.production_interval', NULL, '10', '2016-02-29 12:03:31.197823+02');
-- TODO: This should be removed or moved to S2A_L3C ?
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.reproc_production_interval', NULL, '30', '2016-02-29 12:03:31.197823+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l3b.sched_wait_proc_inputs', NULL, '0', '2015-07-10 17:54:17.288095+03');

-- -----------------------------------------------------------
-- L2A Masked Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path.l2a_msk', NULL, '/mnt/archive/orchestrator_temp/l2a_msk/{job_id}/{task_id}-{module}', '2021-05-18 17:54:17.288095+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.l2a_msk.enabled', NULL, 'true', '2021-05-18 17:54:17.288095+03');

-- -----------------------------------------------------------
-- S2A_L3C Specific Keys
-- -----------------------------------------------------------

-- -----------------------------------------------------------
-- S2A_L3D Specific Keys
-- -----------------------------------------------------------

-- -----------------------------------------------------------
-- L3E Specific Keys
-- -----------------------------------------------------------

-- -----------------------------------------------------------
-- L4A Specific Keys
-- -----------------------------------------------------------

-- -----------------------------------------------------------
-- L4B Specific Keys
-- -----------------------------------------------------------

-- -----------------------------------------------------------
-- S4C_L4A Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('archiver.max_age.s4c_l4a', NULL, '1', '2015-06-02 11:39:50.928228+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_l4a.keep_job_folders', NULL, '0', '2016-10-18 16:41:20.194169+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_l4a.slurm_qos', NULL, 'qoss4cl4a', '2015-08-24 17:44:38.29255+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path.s4c_l4a', NULL, '/mnt/archive/orchestrator_temp/s4c_l4a/{job_id}/{task_id}-{module}', '2015-07-10 17:54:17.288095+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.best-s2-pix', NULL, '10', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.lc', NULL, '1234', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.min-node-size', NULL, '10', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.min-s1-pix', NULL, '1', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.min-s2-pix', NULL, '3', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.mode', NULL, 'both', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.num-trees', NULL, '300', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.pa-min', NULL, '30', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.pa-train-h', NULL, '4000', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.pa-train-l', NULL, '1333', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.sample-ratio-h', NULL, '0.25', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.sample-ratio-l', NULL, '0.75', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.smote-k', NULL, '5', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4a.smote-target', NULL, '1000', '2019-02-19 11:09:58.820032+02');

-- -----------------------------------------------------------
-- S4C_L4B Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('archiver.max_age.s4c_l4b', NULL, '1', '2015-06-02 11:39:50.928228+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_l4b.keep_job_folders', NULL, '0', '2016-10-18 16:41:20.194169+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_l4b.slurm_qos', NULL, 'qoss4cl4b', '2015-08-24 17:44:38.29255+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path.s4c_l4b', NULL, '/mnt/archive/orchestrator_temp/s4c_l4b/{job_id}/{task_id}-{module}', '2015-07-10 17:54:17.288095+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.cfg_dir',  NULL, '/mnt/archive/grassland_mowing_files/{site}/{year}/config/', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.cfg_upload_dir',  NULL, '/mnt/archive/upload/grassland_mowing_cfg/{site}', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.default_config_path', NULL, '/usr/share/sen2agri/S4C_L4B_GrasslandMowing/Bin/src_ini/S4C_L4B_Default_Config.cfg', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.end_date',  NULL, '', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.input_amp', NULL, 'N/A', '2019-02-19 11:09:58.820032+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.input_cohe', NULL, 'N/A', '2019-02-19 11:10:25.068169+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.input_l3b', NULL, 'N/A', '2019-02-19 11:09:43.978921+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.input_product_types',  NULL, 'S1_S2', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.s1_py_script',  NULL, '/usr/share/sen2agri/S4C_L4B_GrasslandMowing/Bin/src_s1/S1_main.py', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.s1_s2_startdate_diff',  NULL, '0', '2020-10-02 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.s2_py_script',  NULL, '/usr/share/sen2agri/S4C_L4B_GrasslandMowing/Bin/src_s2/S2_main.py', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.start_date',  NULL, '', '2019-10-18 15:27:41.861613+02');
-- TODO: See if these 2 are used, if not, they should be removed
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.sub_steps',  NULL, 'S1_S2, S1, S2', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4b.working_dir',  NULL, '/mnt/archive/grassland_mowing_files/{site}/{year}/working_dir/', '2019-10-18 15:27:41.861613+02');

-- -----------------------------------------------------------
-- S4C_L4C Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('archiver.max_age.s4c_l4c', NULL, '1', '2015-06-02 11:39:50.928228+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_l4c.keep_job_folders', NULL, '0', '2016-10-18 16:41:20.194169+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_l4c.slurm_qos', NULL, 'qoss4cl4c', '2015-08-24 17:44:38.29255+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path.s4c_l4c', NULL, '/mnt/archive/orchestrator_temp/s4c_l4c/{job_id}/{task_id}-{module}', '2015-07-10 17:54:17.288095+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.cfg_dir', NULL, '/mnt/archive/agric_practices_files/{site}/{year}/config/', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.cfg_upload_dir',  NULL, '/mnt/archive/upload/agric_practices_files/{site}/config', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.country', NULL, 'CNTRY', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.data_extr_dir', NULL, '/mnt/archive/agric_practices_files/{site}/{year}/data_extraction/{product_type}', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.default_config_path', NULL, '/usr/share/sen2agri/S4C_L4C_Configurations/S4C_L4C_Default_Config.cfg', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.execution_operation', NULL, 'ALL', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.filter_ids_path', NULL, '/mnt/archive/agric_practices_files/{site}/{year}/ts_input_tables/FilterIds/Sen4CAP_L4C_FilterIds.csv', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.input_amp', NULL, 'N/A', '2019-02-18 15:28:22.404745+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.input_cohe', NULL, 'N/A', '2019-02-18 15:28:41.060339+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.input_l3b', NULL, 'N/A', '2019-02-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.markers_add_no_data_rows', NULL, '1', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.nrt_data_extr_enabled', NULL, 'false', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.practices', NULL, 'NA', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.prds_per_group', NULL, '1', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.sched_prds_hist_file', NULL, '/mnt/archive/agric_practices_files/{site}/{year}/l4c_scheduled_prds_history.txt', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.sub_steps', NULL, 'ALL,DataExtraction,CatchCrop,Fallow,NFC,HarvestOnly,AllTimeSeriesAnalysis', '2019-04-12 14:56:57.501918+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.tillage_monitoring', NULL, '0', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.tsa_min_acqs_no', NULL, '15', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.ts_input_tables_dir', NULL, '/mnt/archive/agric_practices_files/{site}/{year}/ts_input_tables/{practice}', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.ts_input_tables_upload_root_dir',  NULL, '/mnt/archive/upload/agric_practices_files/{site}/ts_input_tables', '2019-10-18 15:27:41.861613+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_l4c.use_prev_prd', NULL, '1', '2019-10-18 15:27:41.861613+02');

-- -----------------------------------------------------------
-- S4C_MDB1 Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_mdb1.keep_job_folders', NULL, '0', '2016-10-18 16:41:20.194169+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.s4c_mdb1.slurm_qos', NULL, 'qoss4cmdb1', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.scratch-path.s4c_mdb1', NULL, '/mnt/archive/orchestrator_temp/s4c_mdb1/{job_id}/{task_id}-{module}', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.amp_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.cohe_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.data_extr_dir', NULL, '/mnt/archive/marker_database_files/mdb1/{site}/{year}/data_extraction/', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.fapar_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.fcover_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.input_amp', NULL, 'N/A', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.input_cohe', NULL, 'N/A', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.input_l3b', NULL, 'N/A', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.lai_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.ndvi_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.amp_vvvh_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.valid_pixels_enabled', NULL, 'false', '2020-12-16 17:31:06.01191+02');
-- INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.stdev_enabled', NULL, 'true', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.minmax_enabled', NULL, 'false', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.median_enabled', NULL, 'false', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.p25_enabled', NULL, 'false', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.p75_enabled', NULL, 'false', '2020-12-16 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab02_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab03_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab04_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab05_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab06_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab07_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab08_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab8a_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab11_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.l2ab12_enabled', NULL, 'false', '2021-05-16 17:31:06.01191+02'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.mdb3_enabled', NULL, 'false', '2021-10-01 17:31:06.01191+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.s4c_mdb1.mdb3_input_tables', NULL, '/mnt/archive/marker_database_files/mdb1/{site}/{year}/input_tables.csv', '2021-05-16 17:31:06.01191+02'); 

-- -----------------------------------------------------------
-- FMask Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.enabled', NULL, '0', '2021-02-10 15:58:31.878939+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.extractor_image', NULL, 'sen4x/fmask_extractor:0.1.2', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.gdal_image', NULL, 'osgeo/gdal:ubuntu-full-3.3.1', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.image', NULL, 'sen4x/fmask:4.4-ubuntu-20.04', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.cog-tiffs', NULL, '1', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.compress-tiffs', NULL, '1', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.dilation.cloud', NULL, '3', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.dilation.cloud-shadow', NULL, '3', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.dilation.snow', NULL, '0', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.max-retries', NULL, '3', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.num-workers', NULL, '2', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.output-path', NULL, '/mnt/archive/fmask_def/{site}/fmask/', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.retry-interval', NULL, '1 minute', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.threshold', NULL, '20', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.threshold.l8', NULL, '17.5', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.optical.threshold.s2', NULL, '20', '2021-03-18 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.fmask.working-dir', NULL, '/mnt/archive/fmask_tmp/', '2021-03-18 14:43:00.720811+00');

-- -----------------------------------------------------------
-- T-Rex Specific Keys
-- -----------------------------------------------------------
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.module.path.trex-updater', NULL, 't-rex-genconfig.py', '2021-10-11 22:39:08.407059+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('executor.processor.trex.slurm_qos', NULL, 'qostrex', '2021-10-11 17:44:38.29255+03');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.trex-updater.use_docker', NULL, '1', '2021-02-19 14:43:00.720811+00'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.trex-updater.docker_image', NULL, 'sen4cap/data-preparation:0.1', '2021-02-19 14:43:00.720811+00'); 
INSERT INTO config(key, site_id, value, last_updated) VALUES ('general.orchestrator.trex-updater.docker_add_mounts', NULL, '/var/run/docker.sock:/var/run/docker.sock,/var/lib/t-rex:/var/lib/t-rex', '2021-02-19 14:43:00.720811+00');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.trex.t-rex-container', NULL, 'docker_t-rex_1', '2021-10-11 11:09:43.978921+02');
INSERT INTO config(key, site_id, value, last_updated) VALUES ('processor.trex.t-rex-output-file', NULL, '/var/lib/t-rex/t-rex.toml', '2021-10-11 11:09:43.978921+02');
