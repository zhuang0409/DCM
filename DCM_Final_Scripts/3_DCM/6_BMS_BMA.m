% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Action_Task/2_BMS_BMA/prova_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
