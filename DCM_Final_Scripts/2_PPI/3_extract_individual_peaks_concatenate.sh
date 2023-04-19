
# ROIs chosen from the group analysis: all regions are extracted from the thresholded mask (thr 50)

# 2. Create the VOIs in Marsbar

## Extract individual peaks from the group reagion of interest after creating the VOI in marsbar

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

for con in 01; do

rm -r /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/
mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/


# 1 - PMC Left 50
fslmaths /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/spmT_00${con}.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/28/PMC_Left.nii /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Left_spmT_00${con}.nii.gz


# 2 - PMC Right 50
fslmaths /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/spmT_00${con}.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/28/PMC_Right.nii /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Right_spmT_00${con}.nii.gz


# 3 aIPS Left 50
fslmaths /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/spmT_00${con}.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/28/aIPS_Left.nii /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Left_spmT_00${con}.nii.gz


# 4 aIPS Right 50
fslmaths /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/spmT_00${con}.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/28/aIPS_Right.nii /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Right_spmT_00${con}.nii.gz

# 5 LOTC Left 50
fslmaths /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/spmT_00${con}.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/28/LOTC_Left.nii /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Left_spmT_00${con}.nii.gz

# 6 LOTC Right 50
fslmaths /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/spmT_00${con}.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/28/LOTC_Right.nii /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Right_spmT_00${con}.nii.gz


# extract maximum peaks:

fslstats /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Left_spmT_00${con}.nii.gz -x >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt
fslstats /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Right_spmT_00${con}.nii.gz -x >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt
fslstats /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Left_spmT_00${con}.nii.gz -x >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt
fslstats /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Right_spmT_00${con}.nii.gz -x >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt
fslstats /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Left_spmT_00${con}.nii.gz -x >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt
fslstats /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Right_spmT_00${con}.nii.gz -x >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt

cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt | awk 'NR==1'| img2stdcoord -img /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Left_spmT_00${con}.nii.gz -std /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Left_spmT_00${con}.nii.gz -vox - >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt | awk 'NR==2'| img2stdcoord -img /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Right_spmT_00${con}.nii.gz -std /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/PMC_Right_spmT_00${con}.nii.gz -vox - >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt | awk 'NR==3'| img2stdcoord -img /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Left_spmT_00${con}.nii.gz -std /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Left_spmT_00${con}.nii.gz -vox - >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt | awk 'NR==4'| img2stdcoord -img /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Right_spmT_00${con}.nii.gz -std /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/aIPS_Right_spmT_00${con}.nii.gz -vox - >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt | awk 'NR==5'| img2stdcoord -img /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Left_spmT_00${con}.nii.gz -std /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Left_spmT_00${con}.nii.gz -vox - >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_VS.txt | awk 'NR==6'| img2stdcoord -img /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Right_spmT_00${con}.nii.gz -std /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/LOTC_Right_spmT_00${con}.nii.gz -vox - >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt

done
done

## Copy individual peaks:

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29;do

for con in 01;do

mkdir /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate


cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt


cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==1' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/PMC_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==2' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/PMC_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==3' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/aIPS_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==4' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/aIPS_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==5' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/LOTC_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==6' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/LOTC_allsubj.txt


cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==1' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/AllRois_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==2' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/AllRois_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==3' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/AllRois_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==4' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/AllRois_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==5' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/AllRois_allsubj.txt
cat /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/SUB${sub}_spmT_00${con}_ROIs_MNIS.txt | awk 'NR==6' >> /home/caterina/Documents/ACROB/ACROB_ROIs/28/Individual_Peaks_concatenate/AllRois_allsubj.txt


done
done
