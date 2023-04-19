## Perform the second level analysis with 28 participants

for con in 01 02 03 04 05 06 07; do

mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/
mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}
mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB01_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB02_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB03_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB04_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB05_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB06_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB07_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB08_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB09_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB10_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB11_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB12_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB13_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB14_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB15_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB16_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB17_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB18_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB19_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB20_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB21_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB22_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB23_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB25_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB26_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB27_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB28_con_00${con}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/SUB29_con_00${con}.nii,1'
                                                          };
%%
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C${con}';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> text.txt


	cp text.txt second_level_analysis_concatenate.m
	rm text.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_concatenate.m; exit"
	mv second_level_analysis_concatenate_job.m /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/C${con}/second_level_analysis_concatenate_con${con}_job.m
	
done

## F contrast:

for ess in 08; do

mkdir /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/Results

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB01_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB02_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB03_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB04_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB05_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB06_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB07_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB08_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB09_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB10_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB11_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB12_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB13_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB14_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB15_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB16_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB17_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB18_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB19_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB20_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB21_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB22_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB23_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB25_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB26_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB27_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB28_ess_00${ess}.nii,1'
                                                          '/home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/SUB29_ess_00${ess}.nii,1'
                                                          };
%%
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.multi_cov = struct('files', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('Factorial design specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{3}.spm.stats.con.consess{1}.fcon.name = 'F08';
matlabbatch{3}.spm.stats.con.consess{1}.fcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.fcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch); " >> text.txt


	cp text.txt second_level_analysis_concatenate.m
	rm text.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_concatenate.m; exit"
	mv second_level_analysis_concatenate_job.m /home/caterina/Documents/ACROB/3_Second_level_analysis_concatenate_28/F${ess}/Second_level_analysis_concatenate_ess${ess}_job.m
	
done

