
## Create folder of contrasts for the second level analysis -> 28 subjects

for con in 01 02 03 04 05 06 07; do

mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/
mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/con_00${con}.nii /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB${sub}_con_00${con}.nii

done
done


for ess in 08; do

mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ess_00${ess}.nii /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB${sub}_ess_00${ess}.nii

done
done




