
## Estimate the DCM.mat for each model and for each subject

mkdir /home/caterina/Documents/ACROB/5_DCM_V2

#for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do
for sub in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 25 26 27 28 29; do

mkdir /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F

mkdir /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}

cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}/
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/SPM.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}

cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_PMC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_PMC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_PMC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_PMC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_aIPS_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_aIPS_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_aIPS_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_aIPS_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_LOTC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_LOTC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_LOTC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Action_Task/VOI_LOTC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Action_Task/SUB${sub}

mkdir /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task
mkdir /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}

cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/SPM.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_PMC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_PMC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_PMC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_PMC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_aIPS_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_aIPS_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_aIPS_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_aIPS_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_LOTC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_LOTC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_LOTC_Left_adj_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}
cp /home/caterina/Documents/ACROB/2_First_level_analysis_concatenate/SUB${sub}/Analysis_Single-Subject_DCM/Object_Task/VOI_LOTC_Left_1.mat /home/caterina/Documents/ACROB/5_DCM_V2/noAdjusted_F/Object_Task/SUB${sub}


## Action Task - using VOIs adjusted for the F-contrast

echo "%%% subject ${sub}

clear DCM
data_path = '/home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}';
load(fullfile(data_path, 'SPM.mat'));

% Load regions of interest
%--------------------------------------------------------------------------
load(fullfile(data_path,'VOI_PMC_Left_adj_1.mat'),'xY');
DCM.xY(1) = xY;
load(fullfile(data_path,'VOI_aIPS_Left_adj_1.mat'),'xY');
DCM.xY(2) = xY;
load(fullfile(data_path,'VOI_LOTC_Left_adj_1.mat'),'xY');
DCM.xY(3) = xY;

DCM.n = length(DCM.xY);      % number of regions
DCM.v = length(DCM.xY(1).u); % number of time points

% Time series
%--------------------------------------------------------------------------
DCM.Y.dt  = SPM.xY.RT;
DCM.Y.X0  = DCM.xY(1).X0;
for i = 1:DCM.n
    DCM.Y.y(:,i)  = DCM.xY(i).u;
    DCM.Y.name{i} = DCM.xY(i).name;
end

DCM.Y.Q    = spm_Ce(ones(1,DCM.n)*DCM.v);

% Experimental inputs -> Inputs in the design matrix -> Driven input and Acton/Object Task
%--------------------------------------------------------------------------
DCM.U.dt   =  SPM.Sess.U(1).dt;
DCM.U.name = [SPM.Sess.U.name];
DCM.U.u    = [SPM.Sess.U(1).u(33:end,1) ...
              SPM.Sess.U(2).u(33:end,1)]; % this value has to reain like this as it related to SPM-DCM properties

% DCM parameters and options
%--------------------------------------------------------------------------
DCM.delays = repmat(SPM.xY.RT/2,DCM.n,1);
%DCM.delays = [1;1;1];
DCM.TE     = 0.03;

% DCM.options.nonlinear  = 0;
% DCM.options.two_state  = 0;
% DCM.options.stochastic = 0;
% DCM.options.centre = 0;
% DCM.options.nograph    = 1;

%%Options to be changed according to the type of DCM
DCM.options.nonlinear  = 0;
DCM.options.two_state  = 1;
DCM.options.stochastic = 0;
DCM.options.centre = 0;
DCM.options.maxnodes = DCM.n; 
DCM.options.analysis = 0;
DCM.options.nograph = 1;
        
%% FORWARD MODELS:    
% Connectivity matrices -> DCM 1: LOTC -> PMC
%--------------------------------------------------------------------------
DCM.a = [1 1 1; 1 1 1; 1 1 1]; % matrix of nxn (n -> number of regions)
DCM.b = zeros(3,3,2); % two matrices -> 1. Driven Input (all zeros); 2. Modulatory effect of the task (put 1 where you want to consider the task modulation)
DCM.b(1,3,2) = 1; % matrix of nxn (n -> number of regions)
DCM.c = [0 0; 0 0; 1 0]; % rows -> regios; columns -> inputs (2) -> only 1 where considered to have the modulation produced by the driven input
DCM.d = zeros(3,3,0); % no nonlinear connections -> set to zero in this case as we don't consider non-linear connections

save(fullfile(data_path,'DCM_1_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> DCM 1: LOTC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_2_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_3_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_4_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_5_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_6_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> PMC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_7_Left.mat'),'DCM');



%% BACKWARD MODELS:  
%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_8_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_9_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_10_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_11_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_12_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_13_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + AIPS -> LOTC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_14_Left.mat'),'DCM');



%% BIRECTIONAL MODELS
%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS +  AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_15_Left.mat'),'DCM');


%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_16_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_17_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_18_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_19_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_20_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_21_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_22_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_23_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_24_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_25_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_26_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_27_Left.mat'),'DCM');


%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_28_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_29_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_30_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_31_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + LOTC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_32_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_33_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_34_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_35_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS ->LOTC + AIPS -> PMC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_36_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS ->LOTC + PMC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_37_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + PMC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_38_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_39_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> AIPS + LOTC -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_40_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + AIPS -> LOTC + PMC -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_41_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + AIPS -> LOTC + LOTC -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_42_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> AIPS + PMC -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_43_Left.mat'),'DCM');


%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + LOTC -> AIPS + AIPS -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_44_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> LOTC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_45_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> LOTC + AIPS -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_46_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + LOTC -> AIPS + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_47_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_48_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_49_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> AIPS + AIPS -> PMC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_50_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> AIPS + PMC -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_51_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> AIPS + LOTC -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_52_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC + PMC -> LOTC + AIPS -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_53_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC + PMC -> LOTC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_54_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS + AIPS -> PMC + AIPS -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_55_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS + AIPS -> PMC + LOTC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_56_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS + AIPS -> PMC + LOTC -> AIPS + AIPS -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_57_Left.mat'),'DCM');


% DCM Estimation
%--------------------------------------------------------------------------
clear matlabbatch

matlabbatch{1}.spm.dcm.fmri.estimate.dcmmat = {...
	fullfile(data_path,'DCM_1_Left.mat'); ...
	fullfile(data_path,'DCM_2_Left.mat'); ...
	fullfile(data_path,'DCM_3_Left.mat'); ...
	fullfile(data_path,'DCM_4_Left.mat'); ...
	fullfile(data_path,'DCM_5_Left.mat'); ...
	fullfile(data_path,'DCM_6_Left.mat'); ...
	fullfile(data_path,'DCM_7_Left.mat'); ...
	fullfile(data_path,'DCM_8_Left.mat'); ...
	fullfile(data_path,'DCM_9_Left.mat'); ...
	fullfile(data_path,'DCM_10_Left.mat'); ...
	fullfile(data_path,'DCM_11_Left.mat'); ...
	fullfile(data_path,'DCM_12_Left.mat'); ...
	fullfile(data_path,'DCM_13_Left.mat'); ...
	fullfile(data_path,'DCM_14_Left.mat'); ...
	fullfile(data_path,'DCM_15_Left.mat'); ...
	fullfile(data_path,'DCM_16_Left.mat'); ...
	fullfile(data_path,'DCM_17_Left.mat'); ...
	fullfile(data_path,'DCM_18_Left.mat'); ...
	fullfile(data_path,'DCM_19_Left.mat'); ...
	fullfile(data_path,'DCM_20_Left.mat'); ...
	fullfile(data_path,'DCM_21_Left.mat'); ...
	fullfile(data_path,'DCM_22_Left.mat'); ...
	fullfile(data_path,'DCM_23_Left.mat'); ...
	fullfile(data_path,'DCM_24_Left.mat'); ...
	fullfile(data_path,'DCM_25_Left.mat'); ...
	fullfile(data_path,'DCM_26_Left.mat'); ...
	fullfile(data_path,'DCM_27_Left.mat'); ...
	fullfile(data_path,'DCM_28_Left.mat'); ...
	fullfile(data_path,'DCM_29_Left.mat'); ...
	fullfile(data_path,'DCM_30_Left.mat'); ...
	fullfile(data_path,'DCM_31_Left.mat'); ...
	fullfile(data_path,'DCM_32_Left.mat'); ...
	fullfile(data_path,'DCM_33_Left.mat'); ...
	fullfile(data_path,'DCM_34_Left.mat'); ...
	fullfile(data_path,'DCM_35_Left.mat'); ...
	fullfile(data_path,'DCM_36_Left.mat'); ...
	fullfile(data_path,'DCM_37_Left.mat'); ...
	fullfile(data_path,'DCM_38_Left.mat'); ...
	fullfile(data_path,'DCM_39_Left.mat'); ...
	fullfile(data_path,'DCM_40_Left.mat'); ...
	fullfile(data_path,'DCM_41_Left.mat'); ...
	fullfile(data_path,'DCM_42_Left.mat'); ...
	fullfile(data_path,'DCM_43_Left.mat'); ...
	fullfile(data_path,'DCM_44_Left.mat'); ...
	fullfile(data_path,'DCM_45_Left.mat'); ...
	fullfile(data_path,'DCM_46_Left.mat'); ...
	fullfile(data_path,'DCM_47_Left.mat'); ...
	fullfile(data_path,'DCM_48_Left.mat'); ...
	fullfile(data_path,'DCM_49_Left.mat'); ...
	fullfile(data_path,'DCM_50_Left.mat'); ...
	fullfile(data_path,'DCM_51_Left.mat'); ...
	fullfile(data_path,'DCM_52_Left.mat'); ...
	fullfile(data_path,'DCM_53_Left.mat'); ...
	fullfile(data_path,'DCM_54_Left.mat'); ...
	fullfile(data_path,'DCM_55_Left.mat'); ...
	fullfile(data_path,'DCM_56_Left.mat'); ...
        fullfile(data_path,'DCM_57_Left.mat')};
spm_jobman('run',matlabbatch);" >> text.txt

cp text.txt batch_DCM.m
rm text.txt
matlab -nodisplay -nodesktop -r "run batch_DCM.m; exit"
mv batch_DCM.m /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Action_Task/SUB${sub}/batch_DCM.m


## Object Task - using VOIs adjusted for the F-contrast

echo "%%% subject ${sub}

clear DCM
data_path = '/home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}';
load(fullfile(data_path, 'SPM.mat'));

% Load regions of interest
%--------------------------------------------------------------------------
load(fullfile(data_path,'VOI_PMC_Left_adj_1.mat'),'xY');
DCM.xY(1) = xY;
load(fullfile(data_path,'VOI_aIPS_Left_adj_1.mat'),'xY');
DCM.xY(2) = xY;
load(fullfile(data_path,'VOI_LOTC_Left_adj_1.mat'),'xY');
DCM.xY(3) = xY;

DCM.n = length(DCM.xY);      % number of regions
DCM.v = length(DCM.xY(1).u); % number of time points

% Time series
%--------------------------------------------------------------------------
DCM.Y.dt  = SPM.xY.RT;
DCM.Y.X0  = DCM.xY(1).X0;
for i = 1:DCM.n
    DCM.Y.y(:,i)  = DCM.xY(i).u;
    DCM.Y.name{i} = DCM.xY(i).name;
end

DCM.Y.Q    = spm_Ce(ones(1,DCM.n)*DCM.v);

% Experimental inputs
%--------------------------------------------------------------------------
DCM.U.dt   =  SPM.Sess.U(1).dt;
DCM.U.name = [SPM.Sess.U.name];
DCM.U.u    = [SPM.Sess.U(1).u(33:end,1) ...
              SPM.Sess.U(2).u(33:end,1)]; % this value has to reain like this as it related to SPM-DCM properties

% DCM parameters and options
%--------------------------------------------------------------------------
DCM.delays = repmat(SPM.xY.RT/2,DCM.n,1);
%DCM.delays = [1;1;1];
DCM.TE     = 0.03;

% DCM.options.nonlinear  = 0;
% DCM.options.two_state  = 0;
% DCM.options.stochastic = 0;
% DCM.options.centre = 0;
% DCM.options.nograph    = 1;

%%Options to be changed according to the type of DCM
DCM.options.nonlinear  = 0;
DCM.options.two_state  = 1;
DCM.options.stochastic = 0;
DCM.options.centre = 0;
DCM.options.maxnodes = DCM.n; 
DCM.options.analysis = 0;
DCM.options.nograph = 1;
        
%% FORWARD MODELS:    
% Connectivity matrices -> DCM 1: LOTC -> PMC
%--------------------------------------------------------------------------
DCM.a = [1 1 1; 1 1 1; 1 1 1]; % matrix of nxn (n -> number of regions)
DCM.b = zeros(3,3,2); % two matrices -> 1. Driven Input (all zeros); 2. Modulatory effect of the task (put 1 where you want to consider the task modulation)
DCM.b(1,3,2) = 1; % matrix of nxn (n -> number of regions)
DCM.c = [0 0; 0 0; 1 0]; % rows -> regios; columns -> inputs (2) -> only 1 where considered to have the modulation produced by the driven input
DCM.d = zeros(3,3,0); % no nonlinear connections -> set to zero in this case as we don't consider non-linear connections

save(fullfile(data_path,'DCM_1_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> DCM 1: LOTC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_2_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_3_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_4_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_5_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_6_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> PMC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_7_Left.mat'),'DCM');



%% BACKWARD MODELS:  
%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_8_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_9_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_10_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_11_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_12_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_13_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + AIPS -> LOTC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_14_Left.mat'),'DCM');



%% BIRECTIONAL MODELS
%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS +  AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_15_Left.mat'),'DCM');


%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_16_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_17_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_18_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> LOTC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_19_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_20_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> PMC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_21_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_22_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_23_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_24_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_25_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_26_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_27_Left.mat'),'DCM');


%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_28_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_29_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_30_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_31_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + LOTC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_32_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_33_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_34_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS

DCM.b = zeros(3,3,2);  
DCM.b(3,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_35_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS ->LOTC + AIPS -> PMC + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_36_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS ->LOTC + PMC -> AIPS + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_37_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + PMC -> AIPS + LOTC -> PMC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_38_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> LOTC

DCM.b = zeros(3,3,2);  
DCM.b(3,2,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_39_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> AIPS + LOTC -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_40_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + AIPS -> LOTC + PMC -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_41_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + AIPS -> LOTC + LOTC -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_42_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> AIPS -> PMC + PMC -> AIPS + LOTC -> AIPS + PMC -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_43_Left.mat'),'DCM');


%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + LOTC -> AIPS + AIPS -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_44_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> LOTC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_45_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + AIPS -> LOTC + AIPS -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_46_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + LOTC -> AIPS + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_47_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_48_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_49_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> AIPS + AIPS -> PMC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_50_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> AIPS + PMC -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(3,1,2) = 1;
save(fullfile(data_path,'DCM_51_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + AIPS -> PMC + PMC -> AIPS + LOTC -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
save(fullfile(data_path,'DCM_52_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC + PMC -> LOTC + AIPS -> PMC
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(1,2,2) = 1;
save(fullfile(data_path,'DCM_53_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> AIPS + AIPS -> LOTC + LOTC -> PMC + PMC -> LOTC + PMC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,1,2) = 1;
save(fullfile(data_path,'DCM_54_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS + AIPS -> PMC + AIPS -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_55_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS + AIPS -> PMC + LOTC -> AIPS
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
save(fullfile(data_path,'DCM_56_Left.mat'),'DCM');

%--------------------------------------------------------------------------
% Connectivity matrices -> LOTC -> PMC + PMC -> LOTC + PMC -> AIPS + AIPS -> PMC + LOTC -> AIPS + AIPS -> LOTC
DCM.b = zeros(3,3,2);  
DCM.b(1,2,2) = 1;
DCM.b(2,1,2) = 1;
DCM.b(1,3,2) = 1;
DCM.b(3,1,2) = 1;
DCM.b(2,3,2) = 1;
DCM.b(3,2,2) = 1;
save(fullfile(data_path,'DCM_57_Left.mat'),'DCM');


% DCM Estimation
%--------------------------------------------------------------------------
clear matlabbatch

matlabbatch{1}.spm.dcm.fmri.estimate.dcmmat = {...
	fullfile(data_path,'DCM_1_Left.mat'); ...
	fullfile(data_path,'DCM_2_Left.mat'); ...
	fullfile(data_path,'DCM_3_Left.mat'); ...
	fullfile(data_path,'DCM_4_Left.mat'); ...
	fullfile(data_path,'DCM_5_Left.mat'); ...
	fullfile(data_path,'DCM_6_Left.mat'); ...
	fullfile(data_path,'DCM_7_Left.mat'); ...
	fullfile(data_path,'DCM_8_Left.mat'); ...
	fullfile(data_path,'DCM_9_Left.mat'); ...
	fullfile(data_path,'DCM_10_Left.mat'); ...
	fullfile(data_path,'DCM_11_Left.mat'); ...
	fullfile(data_path,'DCM_12_Left.mat'); ...
	fullfile(data_path,'DCM_13_Left.mat'); ...
	fullfile(data_path,'DCM_14_Left.mat'); ...
	fullfile(data_path,'DCM_15_Left.mat'); ...
	fullfile(data_path,'DCM_16_Left.mat'); ...
	fullfile(data_path,'DCM_17_Left.mat'); ...
	fullfile(data_path,'DCM_18_Left.mat'); ...
	fullfile(data_path,'DCM_19_Left.mat'); ...
	fullfile(data_path,'DCM_20_Left.mat'); ...
	fullfile(data_path,'DCM_21_Left.mat'); ...
	fullfile(data_path,'DCM_22_Left.mat'); ...
	fullfile(data_path,'DCM_23_Left.mat'); ...
	fullfile(data_path,'DCM_24_Left.mat'); ...
	fullfile(data_path,'DCM_25_Left.mat'); ...
	fullfile(data_path,'DCM_26_Left.mat'); ...
	fullfile(data_path,'DCM_27_Left.mat'); ...
	fullfile(data_path,'DCM_28_Left.mat'); ...
	fullfile(data_path,'DCM_29_Left.mat'); ...
	fullfile(data_path,'DCM_30_Left.mat'); ...
	fullfile(data_path,'DCM_31_Left.mat'); ...
	fullfile(data_path,'DCM_32_Left.mat'); ...
	fullfile(data_path,'DCM_33_Left.mat'); ...
	fullfile(data_path,'DCM_34_Left.mat'); ...
	fullfile(data_path,'DCM_35_Left.mat'); ...
	fullfile(data_path,'DCM_36_Left.mat'); ...
	fullfile(data_path,'DCM_37_Left.mat'); ...
	fullfile(data_path,'DCM_38_Left.mat'); ...
	fullfile(data_path,'DCM_39_Left.mat'); ...
	fullfile(data_path,'DCM_40_Left.mat'); ...
	fullfile(data_path,'DCM_41_Left.mat'); ...
	fullfile(data_path,'DCM_42_Left.mat'); ...
	fullfile(data_path,'DCM_43_Left.mat'); ...
	fullfile(data_path,'DCM_44_Left.mat'); ...
	fullfile(data_path,'DCM_45_Left.mat'); ...
	fullfile(data_path,'DCM_46_Left.mat'); ...
	fullfile(data_path,'DCM_47_Left.mat'); ...
	fullfile(data_path,'DCM_48_Left.mat'); ...
	fullfile(data_path,'DCM_49_Left.mat'); ...
	fullfile(data_path,'DCM_50_Left.mat'); ...
	fullfile(data_path,'DCM_51_Left.mat'); ...
	fullfile(data_path,'DCM_52_Left.mat'); ...
	fullfile(data_path,'DCM_53_Left.mat'); ...
	fullfile(data_path,'DCM_54_Left.mat'); ...
	fullfile(data_path,'DCM_55_Left.mat'); ...
	fullfile(data_path,'DCM_56_Left.mat'); ...
        fullfile(data_path,'DCM_57_Left.mat')};
spm_jobman('run',matlabbatch);" >> text.txt

cp text.txt batch_DCM.m
rm text.txt
matlab -nodisplay -nodesktop -r "run batch_DCM.m; exit"
mv batch_DCM.m /home/caterina/Documents/ACROB/5_DCM_V2/Adjusted_F/Object_Task/SUB${sub}/batch_DCM.m


done
