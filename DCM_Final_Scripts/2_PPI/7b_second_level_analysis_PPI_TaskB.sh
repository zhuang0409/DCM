
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/Results

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Left_TaskB/second_level_analysis_PPI_job.m
	
## PMC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/PMC_Right_TaskB/second_level_analysis_PPI_job.m

## aIPS Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Left_TaskB/second_level_analysis_PPI_job.m

## aIPS Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/aIPS_Right_TaskB/second_level_analysis_PPI_job.m

## LOTC Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Left_TaskB/second_level_analysis_PPI_job.m

## LOTC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/noAdjusted/LOTC_Right_TaskB/second_level_analysis_PPI_job.m



## Adjusted:

mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/Results
mkdir /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/Results

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Left_TaskB/second_level_analysis_PPI_job.m
	
## PMC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/PMC_Right_TaskB/second_level_analysis_PPI_job.m

## aIPS Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Left_TaskB/second_level_analysis_PPI_job.m

## aIPS Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/aIPS_Right_TaskB/second_level_analysis_PPI_job.m

## LOTC Left

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Left_TaskB/second_level_analysis_PPI_job.m

## LOTC Right

echo "matlabbatch{1}.spm.stats.factorial_design.dir = {'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/Results'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB01_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB02_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB03_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB04_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB05_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB06_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB07_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB08_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB09_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB10_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB11_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB12_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB13_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB14_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB15_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB16_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB17_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB18_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB19_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB20_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB21_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB22_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB23_con_0001.nii,1'
                                                          %'/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB24_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB25_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB26_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB27_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB28_con_0001.nii,1'
                                                          '/home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/SUB29_con_0001.nii,1'
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
	mv second_level_analysis_PPI_job.m /home/caterina/Documents/ACROB/5_Second_level_analysis_PPI/Adjusted/LOTC_Right_TaskB/second_level_analysis_PPI_job.m


