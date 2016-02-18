#!/bin/bash

/home/achenebert/src/scripts/CropType.py -ref /data/s2agri/input/InSituData/2015/China/CN_SHAN_LC_FO_2015.shp -ratio 0.75 -input \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150423_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150423_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150508_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150508_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150513_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150513_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150523_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150523_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150528_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150528_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150607_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150607_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150612_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150612_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150617_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150617_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150702_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150702_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150712_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150712_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150727_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150727_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150811_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150811_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150816_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150816_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150821_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150821_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150826_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150826_N2A_ShandongChinaD0000B0000.xml \
/data/s2agri/input/EOData/2015/China/Shandong/SPOT5_HRG2_XS_20150915_N2A_ShandongChinaD0000B0000/SPOT5_HRG2_XS_20150915_N2A_ShandongChinaD0000B0000.xml \
-rate 5 -classifier rf -rfnbtrees 100 -rfmax 25 -rfmin 25 -rseed 0 -mask /data/s2agri/output/China/Shandong/cropMask/crop_mask.tif -tilename T15SVC -pixsize 10 \
-outdir /data/s2agri/output/China/Shandong/cropType -targetfolder /data/s2agri/output/China/Shandong/cropType-product -buildfolder /data/s2agri/sen2agri-processors-build/
