#! /bin/bash

#USER modif
#add directories where SPOT products are to be found
inputXML="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130217_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130217_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130222_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130222_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130227_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130227_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130304_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130304_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130319_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130319_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130324_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130324_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130329_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130329_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130403_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130403_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130413_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130413_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130418_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130418_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130423_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130423_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130503_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130503_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130513_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130513_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130518_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130518_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130523_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130523_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130602_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130602_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130607_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130607_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130612_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130612_N2A_CSudmipy-ED0000B0000.xml "
inputXML+="/mnt/Satellite_Imagery/S2-QR/CSudmipy-E_LEVEL2A/SPOT4_HRVIR1_XS_20130617_N2A_CSudmipy-ED0000B0000/SPOT4_HRVIR1_XS_20130617_N2A_CSudmipy-ED0000B0000.xml "

L3A_DATE="20130617"
HALF_SYNTHESIS="60"
#end of USER modif

if [ $# -lt 4 ]
then
  echo "Usage: $0 <otb directory application> <resolution> <out folder name> <bands mapping file> [scattering coefficient file - S2 case only]"
  echo "The file with input xmls should be given. The resolution for which the computations will be performed should be given. The output directory should be given" 1>&2  
  exit
fi

SCAT_COEF=""
if [ $# == 5 ] ; then    
    ./run_composite.sh "$1" "$inputXML" "$2" "$3" "$L3A_DATE" "$HALF_SYNTHESIS" "$4" "$5"
else
    ./run_composite.sh "$1" "$inputXML" "$2" "$3" "$L3A_DATE" "$HALF_SYNTHESIS" "$4"
fi

