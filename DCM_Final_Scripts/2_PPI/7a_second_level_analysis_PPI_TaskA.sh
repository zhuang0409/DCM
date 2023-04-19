
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/Results

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskA/second_level_analysis_PPI_job.m
	
## PMC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskA/second_level_analysis_PPI_job.m

## aIPS Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskA/second_level_analysis_PPI_job.m

## aIPS Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskA/second_level_analysis_PPI_job.m

## LOTC Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskA/second_level_analysis_PPI_job.m

## LOTC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskA/second_level_analysis_PPI_job.m



## Adjusted:

mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/Results

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskA/second_level_analysis_PPI_job.m
	
## PMC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskA/second_level_analysis_PPI_job.m

## aIPS Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskA/second_level_analysis_PPI_job.m

## aIPS Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskA/second_level_analysis_PPI_job.m

## LOTC Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskA/second_level_analysis_PPI_job.m

## LOTC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/SUB29_con_0001.nii,1'
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'C01';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.weights = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 0;
spm_jobman('run',matlabbatch);" >> PPI_Second_Level.txt


	cp PPI_Second_Level.txt second_level_analysis_PPI.m
	rm PPI_Second_Level.txt
	matlab -nodisplay -nodesktop -r "run second_level_analysis_PPI.m; exit"
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskA/second_level_analysis_PPI_job.m


