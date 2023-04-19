% List of open inputs
nrun = X; % enter the number of runs here
jobfile = {'/home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/1_Families/BMS_family_job_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(0, nrun);
for crun = 1:nrun
end
spm('defaults', 'FMRI');
spm_jobman('run', jobs, inputs{:});
