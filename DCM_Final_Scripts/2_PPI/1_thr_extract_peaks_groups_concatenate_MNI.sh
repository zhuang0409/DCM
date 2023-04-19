## Extract the peaks of activation from the group analysis:

# threshold of the activation -> T=5.789

for con in 01; do

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_0001.nii -thr 5.789 /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii

done


# extract thresholded activation in the anatomical masks created from the masks thresholded (50)

for con in 01; do

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/PMC_50_bin_Left.nii.gz /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Left.nii

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/PMC_50_bin_Right.nii.gz /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Right.nii

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/aIPS_50_bin_Left.nii.gz /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Left.nii

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/aIPS_50_bin_Right.nii.gz /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Right.nii

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/LOTC_50_bin_Left.nii.gz /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_Left.nii

fslmaths /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr5.789.nii -mul /home/caterina/Documents/ACROB/4_PPI_Concatenate/ROIs_marsbar/LOTC_50_bin_Right.nii.gz /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_Right.nii


done

# extract peaks of activation in the masks and create a corresponding txt file:

for con in 01; do


fslstats /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Left.nii.gz -x >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt
fslstats /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Right.nii.gz -x >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt

fslstats /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Left.nii.gz -x >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt
fslstats /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Right.nii.gz -x >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt

fslstats /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_Left.nii.gz -x >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt
fslstats /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_Right.nii.gz -x >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt

done

## Convert coordinates from voxel to MNI space:

# directly writing the coordinates:
# echo 55 17 34 | img2stdcoord -img ROI_LOTC_Left.nii.gz -std ROI_LOTC_Left.nii.gz -vox - >> MNI_coordinates.txt

# taking the coordinates from a text file: Take the values in the first line:

# cat 3_Second_level_analysis_concatenate_28/peaks_group.txt | awk 'NR==1'| img2stdcoord -img 3_Second_level_analysis_concatenate_28/C01/Results/ROI_LOTC_Left.nii.gz -std 3_Second_level_analysis_concatenate_28/C01/Results/ROI_LOTC_Left.nii.gz -vox - >> MNI_coordinates.txt

for con in 01; do

cat /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt | awk 'NR==1'| img2stdcoord -img /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Left.nii.gz -std /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Left.nii.gz -vox - >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/MNI_coordinates_C${con}.txt

cat /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt | awk 'NR==2'| img2stdcoord -img /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Right.nii.gz -std /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_PMC_Right.nii.gz -vox - >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/MNI_coordinates_C${con}.txt

cat /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt | awk 'NR==3'| img2stdcoord -img /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Left.nii.gz -std /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Left.nii.gz -vox - >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/MNI_coordinates_C${con}.txt

cat /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt | awk 'NR==4'| img2stdcoord -img /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Right.nii.gz -std /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_aIPS_Right.nii.gz -vox - >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/MNI_coordinates_C${con}.txt

cat /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt | awk 'NR==5'| img2stdcoord -img /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_50_Left.nii.gz -std /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_50_Left.nii.gz -vox - >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/MNI_coordinates_C${con}.txt

cat /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/peaks_group_C${con}.txt | awk 'NR==6'| img2stdcoord -img /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_50_Right.nii.gz -std /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results/spmT_thr_LOTC_50_Right.nii.gz -vox - >> /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/MNI_coordinates_C${con}.txt



done

