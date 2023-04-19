
% Function to create a model_space.mat that can be used to perform the Bayesian Model Selection:

%% Adjusted - Action Task - Version 1
% Right:
adj_action = '/home/caterina/Documents/ACROB/5_DCM_V2_Right/Adjusted_F/Action_Task/' % set the path with the DCM of each subject

for s = 1: 2 % number of subject
    for m = 1:28 % number of models
        subj(s).sess(1).model(m).fname = ...
        fullfile(adj_action,sprintf('SUB%d',s), sprintf('DCM_%d_Right',m));
    cd (adj_action)
        A = load(sprintf('SUB%d/DCM_%d_Right.mat',s, m));
        subj(s).sess(1).model(m).F = [A.F]
        subj(s).sess(1).model(m).Ep = [A.Ep]
        subj(s).sess(1).model(m).Cp = [A.Cp]
        
    end
end

% output: 'struct' organized in:
% - sess -> [1x1] struct for each participant;
% - model -> [1x16] struct with the models for each participant
% - in models -> informations regarding each DCM: fname, F, Ep, Cp.

save model_space subj

% Left - Version 1

adj_action = '/home/caterina/Documents/ACROB/5_DCM_V2_Left/Adjusted_F/' % set the path with the DCM of each subject

for s = 1:2 % number of subject
    for m = 1:57 % number of models
        subj(s).sess(1).model(m).fname = ...
        fullfile(adj_action,sprintf('SUB%d',s), sprintf('DCM_%d_Left',m));
    cd (adj_action)
        A = load(sprintf('SUB%d/DCM_%d_Left.mat',s, m));
        subj(s).sess(1).model(m).F = [A.F]
        subj(s).sess(1).model(m).Ep = [A.Ep]
        subj(s).sess(1).model(m).Cp = [A.Cp]
        
    end
end

save model_space subj


%% Adjusted - Object Task  - Version 1
% Right
adj_object = '/home/caterina/Documents/ACROB/5_DCM_V2_Right/Adjusted_F/Object_Task/' % set the path with the DCM of each subject

for s = 1:2 % number of subject
    for m = 1:57 % number of models
        subj(s).sess(1).model(m).fname = ...
        fullfile(adj_object,sprintf('SUB%d',s), sprintf('DCM_%d_Right',m));
    cd (adj_object)
        A = load(sprintf('SUB%d/DCM_%d_Right.mat',s, m));
        subj(s).sess(1).model(m).F = [A.F]
        subj(s).sess(1).model(m).Ep = [A.Ep]
        subj(s).sess(1).model(m).Cp = [A.Cp]
        
    end
end

save model_space subj

% Left - Version 1:
adj_object = '/home/caterina/Documents/ACROB/5_DCM_V2_Left/Adjusted_F/Object_Task/' % set the path with the DCM of each subject

for s = 1:28 % number of subject
    for m = 1:57 % number of models
        subj(s).sess(1).model(m).fname = ...
        fullfile(adj_object,sprintf('SUB%d',s), sprintf('DCM_%d_Left',m));
    cd (adj_object)
        A = load(sprintf('SUB%d/DCM_%d_Left.mat',s, m));
        subj(s).sess(1).model(m).F = [A.F]
        subj(s).sess(1).model(m).Ep = [A.Ep]
        subj(s).sess(1).model(m).Cp = [A.Cp]
        
    end
end

save model_space subj

% Create families:
% 2 families
%family.names = {'FORWARD' 'BACKWARD'}
%family.partition = [1 1 1 1 1 1 1 2 2 2 2 2 2 2] 
%save /home/caterina/Documents/ACROB/5_DCM_V2/pf_2family family

% 3 families - Final Version
family.names = {'FORWARD' 'BACKWARD' 'BIDIRECTIONAL'}
family.partition = [1 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3] 
save /home/caterina/Documents/ACROB/5_DCM_V2_Left/pf_family family
%--------------------------------------------------------------------------------------------------------------------------------------------

%% Adjusted - Version 2 (same design matrix for the two tasks)

% Left - Version 2

% adj = '/home/caterina/Documents/ACROB/5_DCM_V2_Left/Adjusted_F/' % set the path with the DCM of each subject
% 
% for s = 1:2 % number of subject
%     for m = 1:114 % number of models
%         subj(s).sess(1).model(m).fname = ...
%         fullfile(adj,sprintf('SUB%d',s), sprintf('DCM_%d_Action_Left',m));
%         cd (adj)
%         A = load(sprintf('SUB%d/DCM_%d_Action_Left.mat',s, m));
%         subj(s).sess(1).model(m).F = [A.F]
%         subj(s).sess(1).model(m).Ep = [A.Ep]
%         subj(s).sess(1).model(m).Cp = [A.Cp]
%     end
% end
% 
% save model_space subj


%% Extract the highest values in a vector:

[val, idx] = max(BMS.DCM.rfx.model.xp) % -> maximum exceedence probability
% Calculate the exponential of the coefficients in the different matrices -> two-state DCM:
exp(BMS.DCM.rfx.bma.mEp.A)
exp(BMS.DCM.rfx.bma.mEp.B)
 