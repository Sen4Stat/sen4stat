#! /bin/bash

#USER modif
#add directories where SPOT products are to be found
./pheno_processing.py --applocation ~/sen2agri-processors-build --input \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130216_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130216_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130221_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130221_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130303_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130303_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130308_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130308_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130318_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130318_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130323_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130323_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130407_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130407_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130412_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130412_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130417_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130417_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130422_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130422_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130512_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130512_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130517_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130517_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130527_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130527_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130606_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130606_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130611_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130611_N2A_CSudmipy-OD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot4-T5/Sudmipy-West/SPOT4_HRVIR_XS_20130616_N2A_CSudmipy-OD0000B0000/SPOT4_HRVIR_XS_20130616_N2A_CSudmipy-OD0000B0000.xml" \
--resolution 20 --outdir /mnt/data/L3B/SPOT4-T5/Midp_W/pheno-2016-01-06
#end of USER modif
