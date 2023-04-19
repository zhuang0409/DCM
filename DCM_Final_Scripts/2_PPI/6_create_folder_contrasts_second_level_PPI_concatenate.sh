## Create the folders of the contrasts for the second level PPI analysis:

mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29; do


mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/

mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/

cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/PMC_Left_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/PMC_Right_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/aIPS_Left_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/aIPS_Right_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/LOTC_Left_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/LOTC_Right_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB${sub}_con_0001.nii

cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/PMC_Left_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/PMC_Right_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/aIPS_Left_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/aIPS_Right_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/LOTC_Left_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/LOTC_Right_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB${sub}_con_0001.nii

cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/PMC_Left_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/PMC_Right_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/aIPS_Left_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/aIPS_Right_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/LOTC_Left_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskA/LOTC_Right_TaskA/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB${sub}_con_0001.nii

cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/PMC_Left_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/PMC_Right_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/aIPS_Left_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/aIPS_Right_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/LOTC_Left_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB${sub}_con_0001.nii
cp /home/caterina/Documents/ACROB/4_PPI_Concatenate/SUB${sub}/noAdjusted_F/PPI_TaskB/LOTC_Right_TaskB/con_0001.nii /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB${sub}_con_0001.nii


done
