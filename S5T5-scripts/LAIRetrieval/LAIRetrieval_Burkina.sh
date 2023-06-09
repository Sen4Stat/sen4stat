#! /bin/bash


#UNCOMMENT THE DEFINITIONS BELOW IF YO NEED OTHER VALUES

#parameters for BVInputVariableGeneration
#GENERATED_SAMPLES_NO=100

#parameters for ProSailSimulator
SOLAR_ZENITH_ANGLE=35.826913
SENSOR_ZENITH_ANGLE=19.635654
# Computed as PHI_V - 180 - PHI_S
# if (rel_az < -180.0) then rel_az = rel_az + 360.0
# if (rel_az > 180.0) then rel_az = rel_az - 360.0
# PHI_V>-73.809703566</PHI_V>
#<PHI_S>145.43902353</PHI_S>
RELATIVE_AZIMUTH_ANGLE=10.205286

#parameters for TrainingDataGenerator
#BV_IDX=0
#ADD_REFLS=0
#RED_INDEX=0
#NIR_INDEX=2

#parameters for generating model
#REGRESSION_TYPE="nn"
#BEST_OF=1

#end of USER modif

../../sen2agri-processors/VegetationStatus/TestScripts/lai_retrieve_processing.py --applocation /home/ramona/sen2agri-processors-build --input \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150410_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150410_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150415_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150415_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150420_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150420_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150425_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150425_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150430_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150430_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150505_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150505_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150510_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150510_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150515_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150515_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150520_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150520_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150525_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150525_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150604_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150604_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150614_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150614_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150624_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150624_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150629_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150629_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150709_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150709_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150714_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150714_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150729_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150729_N2A_BurkinaD0000B0000.xml" \
"/mnt/Sen2Agri_DataSets/L2A/Spot5-T5/Burkina/SPOT5_HRG2_XS_20150823_N2A_BurkinaD0000B0000/SPOT5_HRG2_XS_20150823_N2A_BurkinaD0000B0000.xml" \
--res 0 --t0 20150410 --tend 20150823 --outdir /mnt/output/ramona/LAI_Burkina --rsrfile /home/ramona/sen2agri/sen2agri-processors/VegetationStatus/otb-bv/data/spot5hrg1.rsr --solarzenith $SOLAR_ZENITH_ANGLE --sensorzenith $SENSOR_ZENITH_ANGLE --relativeazimuth $RELATIVE_AZIMUTH_ANGLE
