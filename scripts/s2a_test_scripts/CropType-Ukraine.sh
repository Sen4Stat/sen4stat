#!/bin/bash

source ./set_build_folder.sh

./CropType.py \
    -ref /mnt/Sen2Agri_DataSets/In-Situ_TDS/Ukraine/LC/UA_KYIV_LC_FO_2013.shp \
    -input \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130206_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130206_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130226_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130226_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130318_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130318_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130402_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130402_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130412_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130412_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130417_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130417_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130422_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130422_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130427_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130427_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130502_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130502_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130507_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130507_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130512_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130512_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130517_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130517_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130527_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130527_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130601_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130601_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130606_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130606_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130611_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130611_N2A_EUkraineD0000B0000.xml \
    /mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Ukraine/SPOT4_HRVIR1_XS_20130616_N2A_EUkraineD0000B0000/SPOT4_HRVIR1_XS_20130616_N2A_EUkraineD0000B0000.xml \
    -rseed 0 -pixsize 20 \
    -outdir /mnt/data/ukraine/Ukraine-type \
    -buildfolder $BUILD_FOLDER
