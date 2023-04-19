
## Extract VOI adjusting for the F-contrast and create PPI.mat 

for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

for con in 01; do

rm -r /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/noAdjusted_F
rm -r /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ROIs_C${con}/Adjusted_F
rm -r /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/
#mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/
cp -r /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject/ /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/

cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==1' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==2' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Right
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==3' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==4' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Right
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==5' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Left
cat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/SUB${sub}_spmT_0001_ROIs_MNIS.txt | awk 'NR==6' >> /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Right


# Task A: ACTION - Adjusted VOI

mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F
mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/

echo "%%% subject ${sub}

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 8;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left_adj';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 8;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right_adj';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 8;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left_adj';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 8;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right_adj';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 8;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left_adj';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 8;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right_adj';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{7}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{7}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{7}.spm.stats.ppi.type.ppi.u = [1 1 1
                                           2 1 1
                                           3 1 1
                                           4 1 1
                                           5 1 0
                                           6 1 0
                                           7 1 0
                                           8 1 0];
matlabbatch{7}.spm.stats.ppi.name = 'PMC_Left_adj_TaskA';
matlabbatch{7}.spm.stats.ppi.disp = 0;
matlabbatch{8}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{8}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{8}.spm.stats.ppi.type.ppi.u = [1 1 1
                                           2 1 1
                                           3 1 1
                                           4 1 1
                                           5 1 0
                                           6 1 0
                                           7 1 0
                                           8 1 0];
matlabbatch{8}.spm.stats.ppi.name = 'PMC_Right_adj_TaskA';
matlabbatch{8}.spm.stats.ppi.disp = 0;
matlabbatch{9}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{9}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{9}.spm.stats.ppi.type.ppi.u = [1 1 1
                                           2 1 1
                                           3 1 1
                                           4 1 1
                                           5 1 0
                                           6 1 0
                                           7 1 0
                                           8 1 0];
matlabbatch{9}.spm.stats.ppi.name = 'aIPS_Left_adj_TaskA';
matlabbatch{9}.spm.stats.ppi.disp = 0;
matlabbatch{10}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{10}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{10}.spm.stats.ppi.type.ppi.u = [1 1 1
                                            2 1 1
                                            3 1 1
                                            4 1 1
                                            5 1 0
                                            6 1 0
                                            7 1 0
                                            8 1 0];
matlabbatch{10}.spm.stats.ppi.name = 'aIPS_Right_adj_TaskA';
matlabbatch{10}.spm.stats.ppi.disp = 0;
matlabbatch{11}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{11}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{11}.spm.stats.ppi.type.ppi.u = [1 1 1
                                            2 1 1
                                            3 1 1
                                            4 1 1
                                            5 1 0
                                            6 1 0
                                            7 1 0
                                            8 1 0];
matlabbatch{11}.spm.stats.ppi.name = 'LOTC_Left_adj_TaskA';
matlabbatch{11}.spm.stats.ppi.disp = 0;
matlabbatch{12}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{12}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{12}.spm.stats.ppi.type.ppi.u = [1 1 1
                                            2 1 1
                                            3 1 1
                                            4 1 1
                                            5 1 0
                                            6 1 0
                                            7 1 0
                                            8 1 0];
matlabbatch{12}.spm.stats.ppi.name = 'LOTC_Right_adj_TaskA';
matlabbatch{12}.spm.stats.ppi.disp = 0;
spm_jobman('run',matlabbatch);" >> extract.txt

	cp extract.txt extract_VOI_PPI.m
	rm extract.txt
	matlab -nodesktop -r "run extract_VOI_PPI.m; exit"
	mv extract_VOI_PPI.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/extract_VOI_PPI_${sub}.m
	

mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Left_adj_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/PPI_LOTC_Left_adj_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Right_adj_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/PPI_LOTC_Right_adj_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Left_adj_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/PPI_aIPS_Left_adj_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Right_adj_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/PPI_aIPS_Right_adj_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Left_adj_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/PPI_PMC_Left_adj_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Right_adj_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskA/PPI_PMC_Right_adj_TaskA.mat



## no Adjusted - Task A:

mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F
mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/

echo "%%% subject ${sub}

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 0;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 0;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 0;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 0;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 0;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
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
matlabbatch{7}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{7}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{7}.spm.stats.ppi.type.ppi.u = [1 1 1
                                           2 1 1
                                           3 1 1
                                           4 1 1
                                           5 1 0
                                           6 1 0
                                           7 1 0
                                           8 1 0];
matlabbatch{7}.spm.stats.ppi.name = 'PMC_Left_TaskA';
matlabbatch{7}.spm.stats.ppi.disp = 0;
matlabbatch{8}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{8}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{8}.spm.stats.ppi.type.ppi.u = [1 1 1
                                           2 1 1
                                           3 1 1
                                           4 1 1
                                           5 1 0
                                           6 1 0
                                           7 1 0
                                           8 1 0];
matlabbatch{8}.spm.stats.ppi.name = 'PMC_Right_TaskA';
matlabbatch{8}.spm.stats.ppi.disp = 0;
matlabbatch{9}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{9}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{9}.spm.stats.ppi.type.ppi.u = [1 1 1
                                           2 1 1
                                           3 1 1
                                           4 1 1
                                           5 1 0
                                           6 1 0
                                           7 1 0
                                           8 1 0];
matlabbatch{9}.spm.stats.ppi.name = 'aIPS_Left_TaskA';
matlabbatch{9}.spm.stats.ppi.disp = 0;
matlabbatch{10}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{10}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{10}.spm.stats.ppi.type.ppi.u = [1 1 1
                                            2 1 1
                                            3 1 1
                                            4 1 1
                                            5 1 0
                                            6 1 0
                                            7 1 0
                                            8 1 0];
matlabbatch{10}.spm.stats.ppi.name = 'aIPS_Right_TaskA';
matlabbatch{10}.spm.stats.ppi.disp = 0;
matlabbatch{11}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{11}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{11}.spm.stats.ppi.type.ppi.u = [1 1 1
                                            2 1 1
                                            3 1 1
                                            4 1 1
                                            5 1 0
                                            6 1 0
                                            7 1 0
                                            8 1 0];
matlabbatch{11}.spm.stats.ppi.name = 'LOTC_Left_TaskA';
matlabbatch{11}.spm.stats.ppi.disp = 0;
matlabbatch{12}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{12}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{12}.spm.stats.ppi.type.ppi.u = [1 1 1
                                            2 1 1
                                            3 1 1
                                            4 1 1
                                            5 1 0
                                            6 1 0
                                            7 1 0
                                            8 1 0];
matlabbatch{12}.spm.stats.ppi.name = 'LOTC_Right_TaskA';
matlabbatch{12}.spm.stats.ppi.disp = 0;
spm_jobman('run',matlabbatch);" >> extract.txt

	cp extract.txt extract_VOI_PPI.m
	rm extract.txt
	matlab -nodesktop -r "run extract_VOI_PPI.m; exit"
	mv extract_VOI_PPI.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/extract_VOI_PPI_${sub}.m
	

mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Left_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/PPI_LOTC_Left_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Right_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/PPI_LOTC_Right_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Left_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/PPI_aIPS_Left_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Right_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/PPI_aIPS_Right_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Left_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/PPI_PMC_Left_TaskA.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Right_TaskA.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskA/PPI_PMC_Right_TaskA.mat

done
done







for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

for con in 01; do

# Task B: OBJECT

mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F
mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/

echo "%%% subject ${sub}

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 8;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left_adj';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 8;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right_adj';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 8;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left_adj';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 8;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right_adj';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 8;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left_adj';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 8;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right_adj';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{7}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{7}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{7}.spm.stats.ppi.type.ppi.u = [1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{7}.spm.stats.ppi.name = 'PMC_Left_adj_TaskB';
matlabbatch{7}.spm.stats.ppi.disp = 0;
matlabbatch{8}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{8}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{8}.spm.stats.ppi.type.ppi.u = [1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{8}.spm.stats.ppi.name = 'PMC_Right_adj_TaskB';
matlabbatch{8}.spm.stats.ppi.disp = 0;
matlabbatch{9}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{9}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{9}.spm.stats.ppi.type.ppi.u = [1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{9}.spm.stats.ppi.name = 'aIPS_Left_adj_TaskB';
matlabbatch{9}.spm.stats.ppi.disp = 0;
matlabbatch{10}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{10}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{10}.spm.stats.ppi.type.ppi.u =[1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{10}.spm.stats.ppi.name = 'aIPS_Right_adj_TaskB';
matlabbatch{10}.spm.stats.ppi.disp = 0;
matlabbatch{11}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{11}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{11}.spm.stats.ppi.type.ppi.u =[1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{11}.spm.stats.ppi.name = 'LOTC_Left_adj_TaskB';
matlabbatch{11}.spm.stats.ppi.disp = 0;
matlabbatch{12}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{12}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{12}.spm.stats.ppi.type.ppi.u =[1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{12}.spm.stats.ppi.name = 'LOTC_Right_adj_TaskB';
matlabbatch{12}.spm.stats.ppi.disp = 0;
spm_jobman('run',matlabbatch);" >> extract.txt

	cp extract.txt extract_VOI_PPI.m
	rm extract.txt
	matlab -nodesktop -r "run extract_VOI_PPI.m; exit"
	mv extract_VOI_PPI.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/extract_VOI_PPI_${sub}.m
	

mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Left_adj_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/PPI_LOTC_Left_adj_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Right_adj_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/PPI_LOTC_Right_adj_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Left_adj_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/PPI_aIPS_Left_adj_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Right_adj_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/PPI_aIPS_Right_adj_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Left_adj_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/PPI_PMC_Left_adj_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Right_adj_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/Adjusted_F/PPI_TaskB/PPI_PMC_Right_adj_TaskB.mat



## no Adjusted - Task B-> OBJECT:

mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F
mkdir /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/

echo "%%% subject ${sub}

a = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Left')
b = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PMC_Right')
c = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Left')
d = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/aIPS_Right')
e = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Left')
f = importdata('/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/LOTC_Right')

matlabbatch{1}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{1}.spm.util.voi.adjust = 0;
matlabbatch{1}.spm.util.voi.session = 1;
matlabbatch{1}.spm.util.voi.name = 'PMC_Left';
matlabbatch{1}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{1}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{2}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{2}.spm.util.voi.adjust = 0;
matlabbatch{2}.spm.util.voi.session = 1;
matlabbatch{2}.spm.util.voi.name = 'PMC_Right';
matlabbatch{2}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{2}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{3}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{3}.spm.util.voi.adjust = 0;
matlabbatch{3}.spm.util.voi.session = 1;
matlabbatch{3}.spm.util.voi.name = 'aIPS_Left';
matlabbatch{3}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{3}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{4}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{4}.spm.util.voi.adjust = 0;
matlabbatch{4}.spm.util.voi.session = 1;
matlabbatch{4}.spm.util.voi.name = 'aIPS_Right';
matlabbatch{4}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{4}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{5}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{5}.spm.util.voi.adjust = 0;
matlabbatch{5}.spm.util.voi.session = 1;
matlabbatch{5}.spm.util.voi.name = 'LOTC_Left';
matlabbatch{5}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{5}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{6}.spm.util.voi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{6}.spm.util.voi.adjust = 0;
matlabbatch{6}.spm.util.voi.session = 1;
matlabbatch{6}.spm.util.voi.name = 'LOTC_Right';
matlabbatch{6}.spm.util.voi.roi{1}.spm.spmmat      = {''};
matlabbatch{6}.spm.util.voi.roi{1}.spm.contrast    = 1;     % Index of contrast for choosing voxels
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
matlabbatch{7}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{7}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{7}.spm.stats.ppi.type.ppi.u = [1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{7}.spm.stats.ppi.name = 'PMC_Left_TaskB';
matlabbatch{7}.spm.stats.ppi.disp = 0;
matlabbatch{8}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{8}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{8}.spm.stats.ppi.type.ppi.u = [1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{8}.spm.stats.ppi.name = 'PMC_Right_TaskB';
matlabbatch{8}.spm.stats.ppi.disp = 0;
matlabbatch{9}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{9}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{9}.spm.stats.ppi.type.ppi.u = [1 1 0
                                           2 1 0
                                           3 1 0
                                           4 1 0
                                           5 1 1
                                           6 1 1
                                           7 1 1
                                           8 1 1];
matlabbatch{9}.spm.stats.ppi.name = 'aIPS_Left_TaskB';
matlabbatch{9}.spm.stats.ppi.disp = 0;
matlabbatch{10}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{10}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{10}.spm.stats.ppi.type.ppi.u = [1 1 0
                                            2 1 0
                                            3 1 0
                                            4 1 0
                                            5 1 1
                                            6 1 1
                                            7 1 1
                                            8 1 1];
matlabbatch{10}.spm.stats.ppi.name = 'aIPS_Right_TaskB';
matlabbatch{10}.spm.stats.ppi.disp = 0;
matlabbatch{11}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{11}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{11}.spm.stats.ppi.type.ppi.u = [1 1 0
                                            2 1 0
                                            3 1 0
                                            4 1 0
                                            5 1 1
                                            6 1 1
                                            7 1 1
                                            8 1 1];
matlabbatch{11}.spm.stats.ppi.name = 'LOTC_Left_TaskB';
matlabbatch{11}.spm.stats.ppi.disp = 0;
matlabbatch{12}.spm.stats.ppi.spmmat = {'/home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/SPM.mat'};
matlabbatch{12}.spm.stats.ppi.type.ppi.voi(1) = cfg_dep('Volume of Interest:  VOI mat File', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','voimat'));
matlabbatch{12}.spm.stats.ppi.type.ppi.u = [1 1 0
                                            2 1 0
                                            3 1 0
                                            4 1 0
                                            5 1 1
                                            6 1 1
                                            7 1 1
                                            8 1 1];
matlabbatch{12}.spm.stats.ppi.name = 'LOTC_Right_TaskB';
matlabbatch{12}.spm.stats.ppi.disp = 0;
spm_jobman('run',matlabbatch);" >> extract.txt

	cp extract.txt extract_VOI_PPI.m
	rm extract.txt
	matlab -nodesktop -r "run extract_VOI_PPI.m; exit"
	mv extract_VOI_PPI.m /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/extract_VOI_PPI_${sub}.m
	

mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Left_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/PPI_LOTC_Left_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_LOTC_Right_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/PPI_LOTC_Right_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Left_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/PPI_aIPS_Left_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_aIPS_Right_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/PPI_aIPS_Right_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Left_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/PPI_PMC_Left_TaskB.mat
mv /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/PPI_PMC_Right_TaskB.mat /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_PPI/ROIs_C${con}/noAdjusted_F/PPI_TaskB/PPI_PMC_Right_TaskB.mat

done
done



