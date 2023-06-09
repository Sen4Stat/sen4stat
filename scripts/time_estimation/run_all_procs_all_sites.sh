#! /bin/bash

MY_PWD=`pwd`

echo "Starting tests ..." > "$MY_PWD/Tests_Results.txt"

function timedExec {
    TEST_NAME="$1"
    IN_PARAM="$2"
    time ($IN_PARAM) >> "$MY_PWD/Tests_Results.txt" 2>&1
    #mytime="$(time ($IN_PARAM))"
    #echo "Time for $TEST_NAME is : $mytime" >> "$MY_PWD/Tests_Results.txt"
}

cd $MY_PWD
cd Composite

mkdir -p /mnt/data/output_temp/out_l3a_spot4_ukraine_ciu/
./spot4_ukraine.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_ukraine_ciu/

mkdir -p /mnt/data/output_temp/out_l3a_spot4_south_africa_ciu/
./spot4_south_africa.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_south_africa_ciu/

mkdir -p /mnt/data/output_temp/out_l3a_spot4_midp_E_ciu/
./midp_E.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_midp_E_ciu/

mkdir -p /mnt/data/output_temp/out_l3a_spot4_midp_W_ciu/
./midp_W.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_midp_W_ciu/

#mkdir /mnt/data/output_temp/out_l3a_spot4_l8_midp_W/
#timedExec "out_l3a_spot4_l8_midp_W" "./spot4_l8_midp_W.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_l8_midp_W/"
#
#mkdir /mnt/data/output_temp/out_l3a_spot4_l8_south_africa/
#timedExec "out_l3a_spot4_l8_south_africa" "./spot4_l8_south_africa.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_l8_south_africa/"
#
#mkdir /mnt/data/output_temp/out_l3a_spot4_l8_ukraine/
#timedExec "out_l3a_spot4_l8_ukraine" "./spot4_l8_ukraine.sh ~/sen2agri-processors-build/ 20 /mnt/data/output_temp/out_l3a_spot4_l8_ukraine/"
#
#mkdir /mnt/data/output_temp/out_l3a_spot5_belgium/
#timedExec "out_l3a_spot5_belgium" "./spot5_belgium.sh ~/sen2agri-processors-build/ 10 /mnt/data/output_temp/out_l3a_spot5_belgium/"
#
#mkdir /mnt/data/output_temp/out_l3a_spot5_ukraine/
#timedExec "out_l3a_spot5_ukraine" "./spot5_ukraine.sh ~/sen2agri-processors-build/ 10 /mnt/data/output_temp/out_l3a_spot5_ukraine/"
#
#mkdir /mnt/data/output_temp/out_l3a_l8_belgium/
#timedExec "out_l3a_l8_belgium" "./l8_belgium.sh ~/sen2agri-processors-build/ 30 /mnt/data/output_temp/out_l3a_l8_belgium/"
#
#mkdir /mnt/data/output_temp/out_l3a_l8_midp_W/
#timedExec "out_l3a_l8_midp_W" "./l8_midp_W.sh ~/sen2agri-processors-build/ 30 /mnt/data/output_temp/out_l3a_l8_midp_W/"
#
#mkdir /mnt/data/output_temp/out_l3a_l8_south_africa/
#timedExec "out_l3a_l8_south_africa" "./l8_south_africa.sh ~/sen2agri-processors-build/ 30 /mnt/data/output_temp/out_l3a_l8_south_africa/"
#
#mkdir /mnt/data/output_temp/out_l3a_l8_ukraine/
#timedExec "out_l3a_l8_ukraine" "./l8_ukraine.sh ~/sen2agri-processors-build/ 30 /mnt/data/output_temp/out_l3a_l8_ukraine/"

#cd $MY_PWD
#cd CropMask
#mkdir /mnt/data/output_temp/out_l4a_spot4_CSudmipyE/
#timedExec "out_l4a_spot4_CSudmipyE" "./CropMask-CSudmipy-E.sh /mnt/data/output_temp/out_l4a_spot4_CSudmipyE/"

#mkdir /mnt/data/output_temp/out_l4a_spot4_south_africa/
#timedExec "out_l4a_spot4_south_africa" "./CropMask-SouthAfrica.sh /mnt/data/output_temp/out_l4a_spot4_south_africa/"
#
#mkdir /mnt/data/output_temp/out_l4a_spot4_ukraine/
#timedExec "out_l4a_spot4_ukraine" "./CropMask-Ukraine.sh /mnt/data/output_temp/out_l4a_spot4_ukraine/"
#
#cd $MY_PWD
#cd CropType
##mkdir /mnt/data/output_temp/out_l4b_spot4_CSudmipyE/
##timedExec "out_l4b_spot4_CSudmipyE" "./CropType-CSudmipy-E.sh /mnt/data/output_temp/out_l4b_spot4_CSudmipyE/ /mnt/data/output_temp/out_l4a_spot4_CSudmipyE/crop_mask.tif"
#
#mkdir /mnt/data/output_temp/out_l4b_spot4_south_africa/
#timedExec "out_l4b_spot4_south_africa" "./CropType-SouthAfrica.sh /mnt/data/output_temp/out_l4b_spot4_south_africa/ /mnt/data/output_temp/out_l4a_spot4_south_africa/crop_mask.tif"
#
#mkdir /mnt/data/output_temp/out_l4b_spot4_ukraine/
#timedExec "out_l4b_spot4_ukraine" "./CropType-Ukraine.sh /mnt/data/output_temp/out_l4b_spot4_ukraine/ /mnt/data/output_temp/out_l4a_spot4_ukraine/crop_mask.tif"
#
#
#cd $MY_PWD
#cd CropMask
#mkdir /mnt/data/output_temp/out_l4a_spot4_l8_south_africa/
#timedExec "out_l4a_spot4_l8_south_africa" "./CropMask-SouthAfrica-S4-L8.sh /mnt/data/output_temp/out_l4a_spot4_l8_south_africa/"
#
#mkdir /mnt/data/output_temp/out_l4a_spot4_l8_ukraine/
#timedExec "out_l4a_spot4_l8_ukraine" "./CropMask-Ukraine-S4-L8.sh /mnt/data/output_temp/out_l4a_spot4_l8_ukraine/"
#
#
#cd $MY_PWD
#cd CropType
#mkdir /mnt/data/output_temp/out_l4b_spot4_l8_south_africa/
#timedExec "out_l4b_spot4_l8_south_africa" "./CropType-SouthAfrica-S4-L8.sh /mnt/data/output_temp/out_l4b_spot4_l8_south_africa/ /mnt/data/output_temp/out_l4b_spot4_l8_south_africa/crop_mask.tif"
#
#mkdir /mnt/data/output_temp/out_l4b_spot4_l8_ukraine/
#timedExec "out_l4b_spot4_ukraine" "./CropType-Ukraine-S4-L8.sh /mnt/data/output_temp/out_l4b_spot4_l8_ukraine/ /mnt/data/output_temp/out_l4b_spot4_l8_ukraine/crop_mask.tif"
#
#cd $MY_PWD
#cd CropMask
#
##mkdir /mnt/data/output_temp/out_l4a_spot4_CSudmipyO/
##timedExec "out_l4a_spot4_CSudmipyO" "./CropMask-CSudmipy-O.sh /mnt/data/output_temp/out_l4a_spot4_CSudmipyO/"
##
#mkdir /mnt/data/output_temp/out_l4a_spot4_l8_CSudmipyO/
#timedExec "out_l4a_spot4_l8_CSudmipyO" "./CropMask-CSudmipy-O-S4-L8.sh /mnt/data/output_temp/out_l4a_spot4_l8_CSudmipyO/"
#
#cd $MY_PWD
#cd CropType
#
##mkdir /mnt/data/output_temp/out_l4b_spot4_CSudmipyO/
##timedExec "out_l4b_spot4_CSudmipyO" "./CropType-CSudmipy-O.sh /mnt/data/output_temp/out_l4b_spot4_CSudmipyO/ /mnt/data/output_temp/out_l4a_spot4_CSudmipyO/crop_mask.tif"
#
#mkdir /mnt/data/output_temp/out_l4b_spot4_l8_CSudmipyO/
#timedExec "out_l4b_spot4_l8_CSudmipyO" "./CropType-CSudmipy-O-S4-L8.sh /mnt/data/output_temp/out_l4b_spot4_l8_CSudmipyO/ /mnt/data/output_temp/out_l4b_spot4_l8_CSudmipyO/crop_mask.tif"


#cd $MY_PWD
#cd VegetationStatus
#mkdir /mnt/data/output_temp/out_l3b_spot4_belgium/
#timedExec "out_l3b_spot4_belgium" "./lai_retr_spot4_belgium.sh ~/sen2agri-processors-build/VegetationStatus/ 0 /mnt/data/output_temp/out_l3b_spot4_belgium/"
#
#mkdir /mnt/data/output_temp/out_l3b_spot4_midp_E/
#timedExec "out_l3b_spot4_midp_E" "./lai_retr_spot4_midp_E.sh ~/sen2agri-processors-build/VegetationStatus/ 0 /mnt/data/output_temp/out_l3b_spot4_midp_E/"
#
#mkdir /mnt/data/output_temp/out_l3b_spot4_midp_W/
#timedExec "out_l3b_spot4_midp_W" "./lai_retr_spot4_midp_W.sh ~/sen2agri-processors-build/VegetationStatus/ 0 /mnt/data/output_temp/out_l3b_spot4_midp_W/"
#
#mkdir /mnt/data/output_temp/out_l3b_spot4_ukraine/
#timedExec "out_l3b_spot4_ukraine" "./lai_retr_spot4_ukraine.sh ~/sen2agri-processors-build/VegetationStatus/ 0 /mnt/data/output_temp/out_l3b_spot4_ukraine/"
#
#mkdir /mnt/data/output_temp/out_l3b_spot4_south_africa/
#timedExec "out_l3b_spot4_south_africa" "./lai_retr_spot4_south_africa.sh ~/sen2agri-processors-build/VegetationStatus/ 0 /mnt/data/output_temp/out_l3b_spot4_south_africa/"
#
#mkdir /mnt/data/output_temp/out_l3b_spot5_ukraine/
#timedExec "out_l3b_spot5_ukraine" "./lai_retr_spot5_ukraine.sh ~/sen2agri-processors-build/VegetationStatus/ 0 /mnt/data/output_temp/out_l3b_spot5_ukraine/"
