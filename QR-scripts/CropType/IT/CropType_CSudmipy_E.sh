#!/bin/bash

source set_build_folder.sh

./CropType.py -ref /mnt/Sen2Agri_DataSets/In-Situ_TDS/France/LC/SudmipyS2A_LandCoverDecoupe_dissolvedGeometry.shp -ratio 0.75 -input \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130217_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130217_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130222_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130222_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130227_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130227_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130304_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130304_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130319_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130319_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130324_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130324_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130329_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130329_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130403_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130403_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130413_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130413_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130418_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130418_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130423_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130423_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130503_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130503_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130513_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130513_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130518_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130518_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130523_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130523_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130602_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130602_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130607_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130607_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130612_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130612_N2A_CSudmipy-ED0000B0000.xml \
/mnt/Satellite_Imagery/S2-QR/CSudmipy-E-for-crop_LEVEL2A/SPOT4_HRVIR1_XS_20130617_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130617_N2A_CSudmipy-ED0000B0000.xml \
-t0 20130317 -tend 20130617 -rate 5 -radius 100 -classifier rf -rseed 0 -mask /mnt/data/QR_scripts/CropMask_CSudmipy_E/crop_mask.tif -pixsize 20 \
-outdir "/mnt/data/QR_Results/CropType_CSudmipy_E/" -buildfolder $BUILD_FOLDER
