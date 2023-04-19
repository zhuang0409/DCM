## Create the volume of interest for each region and extract the time-course from each region on interest.
## Output: VOI_ROI.mat -> Y with the timecourse of the region.

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

# ACTION TASK

rm /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Left
rm /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Right
rm /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Left
rm /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Right
rm /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Left
rm /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Right

cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==1' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==2' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Right
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==3' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==4' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Right
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==5' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==6' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Right


echo "%%% subject ${sub}

clear all

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 1;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left_adj';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels -> contrast: stimulus presentation > baseline
matlabbatch{1}.spm.util.voi.roi{1}.spm.conjunction = 1; % for conjunction null
matlabbatch{1}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{1}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{1}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{1}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{1}.spm.util.voi.roi{2}.sphere.centre = a;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{1}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 1;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right_adj';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{2}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{2}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{2}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{2}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{2}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{2}.spm.util.voi.roi{2}.sphere.centre = b;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{2}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 1;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left_adj';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{3}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{3}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{3}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{3}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{3}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{3}.spm.util.voi.roi{2}.sphere.centre = c;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{3}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 1;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right_adj';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{4}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{4}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{4}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{4}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{4}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{4}.spm.util.voi.roi{2}.sphere.centre = d;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{4}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 1;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left_adj';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{5}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{5}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{5}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{5}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{5}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{5}.spm.util.voi.roi{2}.sphere.centre = e;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{5}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 1;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right_adj';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{6}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{6}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{6}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{6}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{6}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{6}.spm.util.voi.roi{2}.sphere.centre = f;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{6}.spm.util.voi.expression = 'i1 & i2';

spm_jobman('run',matlabbatch);" >> VOI_DCM.txt

	cp VOI_DCM.txt VOI_DCM.m
	rm VOI_DCM.txt
	matlab -nodesktop -r "run VOI_DCM.m; exit"
	mv VOI_DCM.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_DCM_${sub}.m
	

echo "%%% subject ${sub}

clear all

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 0;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{1}.spm.util.voi.roi{1}.spm.conjunction = 1; % for conjunction null
matlabbatch{1}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{1}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{1}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{1}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{1}.spm.util.voi.roi{2}.sphere.centre = a;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{1}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 0;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{2}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{2}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{2}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{2}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{2}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{2}.spm.util.voi.roi{2}.sphere.centre = b;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{2}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 0;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{3}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{3}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{3}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{3}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{3}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{3}.spm.util.voi.roi{2}.sphere.centre = c;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{3}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 0;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{4}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{4}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{4}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{4}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{4}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{4}.spm.util.voi.roi{2}.sphere.centre = d;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{4}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 0;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{5}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{5}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{5}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{5}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{5}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{5}.spm.util.voi.roi{2}.sphere.centre = e;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{5}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 0;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{6}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{6}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{6}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{6}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{6}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{6}.spm.util.voi.roi{2}.sphere.centre = f;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{6}.spm.util.voi.expression = 'i1 & i2';

spm_jobman('run',matlabbatch);" >> VOI_DCM.txt

	cp VOI_DCM.txt VOI_DCM.m
	rm VOI_DCM.txt
	matlab -nodesktop -r "run VOI_DCM.m; exit"
	mv VOI_DCM.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_DCM_${sub}.m

done


for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

# Object TASK

cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==1' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/PMC_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==2' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/PMC_Right
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==3' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/aIPS_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==4' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/aIPS_Right
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==5' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/LOTC_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C01/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==6' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/LOTC_Right


echo "%%% subject ${sub}

clear all

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 1;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left_adj';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{1}.spm.util.voi.roi{1}.spm.conjunction = 1; % for conjunction null
matlabbatch{1}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{1}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{1}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{1}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{1}.spm.util.voi.roi{2}.sphere.centre = a;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{1}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 1;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right_adj';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{2}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{2}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{2}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{2}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{2}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{2}.spm.util.voi.roi{2}.sphere.centre = b;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{2}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 1;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left_adj';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{3}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{3}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{3}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{3}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{3}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{3}.spm.util.voi.roi{2}.sphere.centre = c;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{3}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 1;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right_adj';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{4}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{4}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{4}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{4}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{4}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{4}.spm.util.voi.roi{2}.sphere.centre = d;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{4}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 1;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left_adj';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{5}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{5}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{5}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{5}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{5}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{5}.spm.util.voi.roi{2}.sphere.centre = e;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{5}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 1;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right_adj';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{6}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{6}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{6}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{6}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{6}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{6}.spm.util.voi.roi{2}.sphere.centre = f;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{6}.spm.util.voi.expression = 'i1 & i2';

spm_jobman('run',matlabbatch);" >> VOI_DCM.txt

	cp VOI_DCM.txt VOI_DCM.m
	rm VOI_DCM.txt
	matlab -nodesktop -r "run VOI_DCM.m; exit"
	mv VOI_DCM.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_DCM_${sub}.m
	

echo "%%% subject ${sub}

clear all

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 0;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{1}.spm.util.voi.roi{1}.spm.conjunction = 1; % for conjunction null
matlabbatch{1}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{1}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{1}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{1}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{1}.spm.util.voi.roi{2}.sphere.centre = a;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{1}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{1}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 0;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{2}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{2}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{2}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{2}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{2}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{2}.spm.util.voi.roi{2}.sphere.centre = b;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{2}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{2}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 0;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{3}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{3}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{3}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{3}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{3}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{3}.spm.util.voi.roi{2}.sphere.centre = c;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{3}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{3}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 0;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{4}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{4}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{4}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{4}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{4}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{4}.spm.util.voi.roi{2}.sphere.centre = d;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{4}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{4}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 0;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{5}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{5}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{5}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{5}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{5}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{5}.spm.util.voi.roi{2}.sphere.centre = e;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{5}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{5}.spm.util.voi.expression = 'i1 & i2';

matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 0;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 3;     % Index of contrast for choosing voxels
matlabbatch{6}.spm.util.voi.roi{1}.spm.conjunction = 1;
matlabbatch{6}.spm.util.voi.roi{1}.spm.threshdesc  = 'none';
matlabbatch{6}.spm.util.voi.roi{1}.spm.thresh      = 0.001;
matlabbatch{6}.spm.util.voi.roi{1}.spm.extent      = 0;
matlabbatch{6}.spm.util.voi.roi{1}.spm.mask ...
    = struct('contrast', {}, 'thresh', {}, 'mtype', {});
matlabbatch{6}.spm.util.voi.roi{2}.sphere.centre = f;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.radius = 6;
matlabbatch{6}.spm.util.voi.roi{2}.sphere.move.fixed = 1;
matlabbatch{6}.spm.util.voi.expression = 'i1 & i2';

spm_jobman('run',matlabbatch);" >> VOI_DCM.txt

	cp VOI_DCM.txt VOI_DCM.m
	rm VOI_DCM.txt
	matlab -nodesktop -r "run VOI_DCM.m; exit"
	mv VOI_DCM.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_DCM_${sub}.m
	
done







