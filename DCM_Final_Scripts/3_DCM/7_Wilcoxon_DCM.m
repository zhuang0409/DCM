
%% Statistical analysis for each matrix of the DCM:

%% Extract the A matrices for each subject:

% Action Task - Left Hemisphere
path = '/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Action_Task'
load ('/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Action_Task/2_BMS_BMA/Random/BMS.mat')

for s = 1:28
    BMA_subj = BMS.DCM.rfx.bma.mEps(s)
    BMA_std_subj = BMS.DCM.rfx.bma.sEps(s)
    A_subj = BMA_subj{1,1}.A
    B_subj = BMA_subj{1,1}.B
    C_subj = BMA_subj{1,1}.C
    A_std_subj = BMA_std_subj{1,1}.A
    B_std_subj = BMA_std_subj{1,1}.B
    C_std_subj = BMA_std_subj{1,1}.C
    mkdir (fullfile(path,sprintf('SUB%d',s), 'Output'))
    cd(fullfile(path,sprintf('SUB%d',s), 'Output'))
    save A A_subj
    save B B_subj
    save C C_subj
    save A_std A_std_subj
    save B_std B_std_subj
    save C_std C_std_subj
end

% Action Task - Right Hemisphere
path = '/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Action_Task'
load ('/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Action_Task/2_BMS_BMA/Random/BMS.mat')

for s = 1:28
    BMA_subj = BMS.DCM.rfx.bma.mEps(s)
    BMA_std_subj = BMS.DCM.rfx.bma.sEps(s)
    A_subj = BMA_subj{1,1}.A
    B_subj = BMA_subj{1,1}.B
    C_subj = BMA_subj{1,1}.C
    A_std_subj = BMA_std_subj{1,1}.A
    B_std_subj = BMA_std_subj{1,1}.B
    C_std_subj = BMA_std_subj{1,1}.C
    mkdir (fullfile(path,sprintf('SUB%d',s), 'Output'))
    cd(fullfile(path,sprintf('SUB%d',s), 'Output'))
    save A A_subj
    save B B_subj
    save C C_subj
    save A_std A_std_subj
    save B_std B_std_subj
    save C_std C_std_subj
end

% Object Task - Left Hemisphere
path = '/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Object_Task'
load ('/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Object_Task/2_BMS_BMA/Random/BMS.mat')

for s = 1:28
    BMA_subj = BMS.DCM.rfx.bma.mEps(s)
    BMA_std_subj = BMS.DCM.rfx.bma.sEps(s)
    A_subj = BMA_subj{1,1}.A
    B_subj = BMA_subj{1,1}.B
    C_subj = BMA_subj{1,1}.C
    A_std_subj = BMA_std_subj{1,1}.A
    B_std_subj = BMA_std_subj{1,1}.B
    C_std_subj = BMA_std_subj{1,1}.C
    mkdir (fullfile(path,sprintf('SUB%d',s), 'Output'))
    cd(fullfile(path,sprintf('SUB%d',s), 'Output'))
    save A A_subj
    save B B_subj
    save C C_subj
    save A_std A_std_subj
    save B_std B_std_subj
    save C_std C_std_subj
end

% Object Task - Right Hemisphere
path = '/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Object_Task'
load ('/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Object_Task/2_BMS_BMA/Random/BMS.mat')

for s = 1:28
    BMA_subj = BMS.DCM.rfx.bma.mEps(s)
    BMA_std_subj = BMS.DCM.rfx.bma.sEps(s)
    A_subj = BMA_subj{1,1}.A
    B_subj = BMA_subj{1,1}.B
    C_subj = BMA_subj{1,1}.C
    A_std_subj = BMA_std_subj{1,1}.A
    B_std_subj = BMA_std_subj{1,1}.B
    C_std_subj = BMA_std_subj{1,1}.C
    mkdir (fullfile(path,sprintf('SUB%d',s), 'Output'))
    cd(fullfile(path,sprintf('SUB%d',s), 'Output'))
    save A A_subj
    save B B_subj
    save C C_subj
    save A_std A_std_subj
    save B_std B_std_subj
    save C_std C_std_subj
end

%% Concatenate the matrices of each subject in a matrix with all subjects together and perform the one-sample T-Test: 

%% Matrix A

% Left Hemisphere
path1 = '/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Action_Task'
path2 = '/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Object_Task'
load(fullfile(path1, 'SUB1', 'Output/A.mat'))
sub1_action_A_left = A_subj
load(fullfile(path1, 'SUB2', 'Output/A.mat'))
sub2_action_A_left = A_subj
load(fullfile(path1, 'SUB3', 'Output/A.mat'))
sub3_action_A_left = A_subj
load(fullfile(path1, 'SUB4', 'Output/A.mat'))
sub4_action_A_left = A_subj
load(fullfile(path1, 'SUB5', 'Output/A.mat'))
sub5_action_A_left = A_subj
load(fullfile(path1, 'SUB6', 'Output/A.mat'))
sub6_action_A_left = A_subj
load(fullfile(path1, 'SUB7', 'Output/A.mat'))
sub7_action_A_left = A_subj
load(fullfile(path1, 'SUB8', 'Output/A.mat'))
sub8_action_A_left = A_subj
load(fullfile(path1, 'SUB9', 'Output/A.mat'))
sub9_action_A_left = A_subj
load(fullfile(path1, 'SUB10', 'Output/A.mat'))
sub10_action_A_left = A_subj
load(fullfile(path1, 'SUB11', 'Output/A.mat'))
sub11_action_A_left = A_subj
load(fullfile(path1, 'SUB12', 'Output/A.mat'))
sub12_action_A_left = A_subj
load(fullfile(path1, 'SUB13', 'Output/A.mat'))
sub13_action_A_left = A_subj
load(fullfile(path1, 'SUB14', 'Output/A.mat'))
sub14_action_A_left = A_subj
load(fullfile(path1, 'SUB15', 'Output/A.mat'))
sub15_action_A_left = A_subj
load(fullfile(path1, 'SUB16', 'Output/A.mat'))
sub16_action_A_left = A_subj
load(fullfile(path1, 'SUB17', 'Output/A.mat'))
sub17_action_A_left = A_subj
load(fullfile(path1, 'SUB18', 'Output/A.mat'))
sub18_action_A_left = A_subj
load(fullfile(path1, 'SUB19', 'Output/A.mat'))
sub19_action_A_left = A_subj
load(fullfile(path1, 'SUB20', 'Output/A.mat'))
sub20_action_A_left = A_subj
load(fullfile(path1, 'SUB21', 'Output/A.mat'))
sub21_action_A_left = A_subj
load(fullfile(path1, 'SUB22', 'Output/A.mat'))
sub22_action_A_left = A_subj
load(fullfile(path1, 'SUB23', 'Output/A.mat'))
sub23_action_A_left = A_subj
load(fullfile(path1, 'SUB24', 'Output/A.mat'))
sub24_action_A_left = A_subj
load(fullfile(path1, 'SUB25', 'Output/A.mat'))
sub25_action_A_left = A_subj
load(fullfile(path1, 'SUB26', 'Output/A.mat'))
sub26_action_A_left = A_subj
load(fullfile(path1, 'SUB27', 'Output/A.mat'))
sub27_action_A_left = A_subj
load(fullfile(path1, 'SUB28', 'Output/A.mat'))
sub28_action_A_left = A_subj

A_tot_subj_action_left = cat(3,sub1_action_A_left,sub2_action_A_left,sub3_action_A_left,sub4_action_A_left,sub5_action_A_left,sub6_action_A_left,sub7_action_A_left,sub8_action_A_left,sub9_action_A_left,sub10_action_A_left, sub11_action_A_left, sub12_action_A_left, sub13_action_A_left, sub14_action_A_left, sub15_action_A_left, sub16_action_A_left, sub17_action_A_left, sub18_action_A_left, sub19_action_A_left, sub20_action_A_left, sub21_action_A_left, sub22_action_A_left, sub23_action_A_left, sub24_action_A_left, sub25_action_A_left, sub26_action_A_left, sub27_action_A_left, sub28_action_A_left)

% Object Task
load(fullfile(path2, 'SUB1', 'Output/A.mat'))
sub1_object_A_left = A_subj
load(fullfile(path2, 'SUB2', 'Output/A.mat'))
sub2_object_A_left = A_subj
load(fullfile(path2, 'SUB3', 'Output/A.mat'))
sub3_object_A_left = A_subj
load(fullfile(path2, 'SUB4', 'Output/A.mat'))
sub4_object_A_left = A_subj
load(fullfile(path2, 'SUB5', 'Output/A.mat'))
sub5_object_A_left = A_subj
load(fullfile(path2, 'SUB6', 'Output/A.mat'))
sub6_object_A_left = A_subj
load(fullfile(path2, 'SUB7', 'Output/A.mat'))
sub7_object_A_left = A_subj
load(fullfile(path2, 'SUB8', 'Output/A.mat'))
sub8_object_A_left = A_subj
load(fullfile(path2, 'SUB9', 'Output/A.mat'))
sub9_object_A_left = A_subj
load(fullfile(path2, 'SUB10', 'Output/A.mat'))
sub10_object_A_left = A_subj
load(fullfile(path2, 'SUB11', 'Output/A.mat'))
sub11_object_A_left = A_subj
load(fullfile(path2, 'SUB12', 'Output/A.mat'))
sub12_object_A_left = A_subj
load(fullfile(path2, 'SUB13', 'Output/A.mat'))
sub13_object_A_left = A_subj
load(fullfile(path2, 'SUB14', 'Output/A.mat'))
sub14_object_A_left = A_subj
load(fullfile(path2, 'SUB15', 'Output/A.mat'))
sub15_object_A_left = A_subj
load(fullfile(path2, 'SUB16', 'Output/A.mat'))
sub16_object_A_left = A_subj
load(fullfile(path2, 'SUB17', 'Output/A.mat'))
sub17_object_A_left = A_subj
load(fullfile(path2, 'SUB18', 'Output/A.mat'))
sub18_object_A_left = A_subj
load(fullfile(path2, 'SUB19', 'Output/A.mat'))
sub19_object_A_left = A_subj
load(fullfile(path2, 'SUB20', 'Output/A.mat'))
sub20_object_A_left = A_subj
load(fullfile(path2, 'SUB21', 'Output/A.mat'))
sub21_object_A_left = A_subj
load(fullfile(path2, 'SUB22', 'Output/A.mat'))
sub22_object_A_left = A_subj
load(fullfile(path2, 'SUB23', 'Output/A.mat'))
sub23_object_A_left = A_subj
load(fullfile(path2, 'SUB24', 'Output/A.mat'))
sub24_object_A_left = A_subj
load(fullfile(path2, 'SUB25', 'Output/A.mat'))
sub25_object_A_left = A_subj
load(fullfile(path2, 'SUB26', 'Output/A.mat'))
sub26_object_A_left = A_subj
load(fullfile(path2, 'SUB27', 'Output/A.mat'))
sub27_object_A_left = A_subj
load(fullfile(path2, 'SUB28', 'Output/A.mat'))
sub28_object_A_left = A_subj

A_tot_subj_object_left = cat(3,sub1_object_A_left,sub2_object_A_left,sub3_object_A_left,sub4_object_A_left,sub5_object_A_left,sub6_object_A_left,sub7_object_A_left,sub8_object_A_left,sub9_object_A_left,sub10_object_A_left, sub11_object_A_left, sub12_object_A_left, sub13_object_A_left, sub14_object_A_left, sub15_object_A_left, sub16_object_A_left, sub17_object_A_left, sub18_object_A_left, sub19_object_A_left, sub20_object_A_left, sub21_object_A_left, sub22_object_A_left, sub23_object_A_left, sub24_object_A_left, sub25_object_A_left, sub26_object_A_left, sub27_object_A_left, sub28_object_A_left)

% Right Hemisphere

% Right Hemisphere
path3 = '/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Action_Task'
path4 = '/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Object_Task'
load(fullfile(path3, 'SUB1', 'Output/A.mat'))
sub1_action_A_right = A_subj
load(fullfile(path3, 'SUB2', 'Output/A.mat'))
sub2_action_A_right = A_subj
load(fullfile(path3, 'SUB3', 'Output/A.mat'))
sub3_action_A_right = A_subj
load(fullfile(path3, 'SUB4', 'Output/A.mat'))
sub4_action_A_right = A_subj
load(fullfile(path3, 'SUB5', 'Output/A.mat'))
sub5_action_A_right = A_subj
load(fullfile(path3, 'SUB6', 'Output/A.mat'))
sub6_action_A_right = A_subj
load(fullfile(path3, 'SUB7', 'Output/A.mat'))
sub7_action_A_right = A_subj
load(fullfile(path3, 'SUB8', 'Output/A.mat'))
sub8_action_A_right = A_subj
load(fullfile(path3, 'SUB9', 'Output/A.mat'))
sub9_action_A_right = A_subj
load(fullfile(path3, 'SUB10', 'Output/A.mat'))
sub10_action_A_right = A_subj
load(fullfile(path3, 'SUB11', 'Output/A.mat'))
sub11_action_A_right = A_subj
load(fullfile(path3, 'SUB12', 'Output/A.mat'))
sub12_action_A_right = A_subj
load(fullfile(path3, 'SUB13', 'Output/A.mat'))
sub13_action_A_right = A_subj
load(fullfile(path3, 'SUB14', 'Output/A.mat'))
sub14_action_A_right = A_subj
load(fullfile(path3, 'SUB15', 'Output/A.mat'))
sub15_action_A_right = A_subj
load(fullfile(path3, 'SUB16', 'Output/A.mat'))
sub16_action_A_right = A_subj
load(fullfile(path3, 'SUB17', 'Output/A.mat'))
sub17_action_A_right = A_subj
load(fullfile(path3, 'SUB18', 'Output/A.mat'))
sub18_action_A_right = A_subj
load(fullfile(path3, 'SUB19', 'Output/A.mat'))
sub19_action_A_right = A_subj
load(fullfile(path3, 'SUB20', 'Output/A.mat'))
sub20_action_A_right = A_subj
load(fullfile(path3, 'SUB21', 'Output/A.mat'))
sub21_action_A_right = A_subj
load(fullfile(path3, 'SUB22', 'Output/A.mat'))
sub22_action_A_right = A_subj
load(fullfile(path3, 'SUB23', 'Output/A.mat'))
sub23_action_A_right = A_subj
load(fullfile(path3, 'SUB24', 'Output/A.mat'))
sub24_action_A_right = A_subj
load(fullfile(path3, 'SUB25', 'Output/A.mat'))
sub25_action_A_right = A_subj
load(fullfile(path3, 'SUB26', 'Output/A.mat'))
sub26_action_A_right = A_subj
load(fullfile(path3, 'SUB27', 'Output/A.mat'))
sub27_action_A_right = A_subj
load(fullfile(path3, 'SUB28', 'Output/A.mat'))
sub28_action_A_right = A_subj

A_tot_subj_action_right = cat(3,sub1_action_A_right,sub2_action_A_right,sub3_action_A_right,sub4_action_A_right,sub5_action_A_right,sub6_action_A_right,sub7_action_A_right,sub8_action_A_right,sub9_action_A_right,sub10_action_A_right, sub11_action_A_right, sub12_action_A_right, sub13_action_A_right, sub14_action_A_right, sub15_action_A_right, sub16_action_A_right, sub17_action_A_right, sub18_action_A_right, sub19_action_A_right, sub20_action_A_right, sub21_action_A_right, sub22_action_A_right, sub23_action_A_right, sub24_action_A_right, sub25_action_A_right, sub26_action_A_right, sub27_action_A_right, sub28_action_A_right)

% Object Task
load(fullfile(path4, 'SUB1', 'Output/A.mat'))
sub1_object_A_right = A_subj
load(fullfile(path4, 'SUB2', 'Output/A.mat'))
sub2_object_A_right = A_subj
load(fullfile(path4, 'SUB3', 'Output/A.mat'))
sub3_object_A_right = A_subj
load(fullfile(path4, 'SUB4', 'Output/A.mat'))
sub4_object_A_right = A_subj
load(fullfile(path4, 'SUB5', 'Output/A.mat'))
sub5_object_A_right = A_subj
load(fullfile(path4, 'SUB6', 'Output/A.mat'))
sub6_object_A_right = A_subj
load(fullfile(path4, 'SUB7', 'Output/A.mat'))
sub7_object_A_right = A_subj
load(fullfile(path4, 'SUB8', 'Output/A.mat'))
sub8_object_A_right = A_subj
load(fullfile(path4, 'SUB9', 'Output/A.mat'))
sub9_object_A_right = A_subj
load(fullfile(path4, 'SUB10', 'Output/A.mat'))
sub10_object_A_right = A_subj
load(fullfile(path4, 'SUB11', 'Output/A.mat'))
sub11_object_A_right = A_subj
load(fullfile(path4, 'SUB12', 'Output/A.mat'))
sub12_object_A_right = A_subj
load(fullfile(path4, 'SUB13', 'Output/A.mat'))
sub13_object_A_right = A_subj
load(fullfile(path4, 'SUB14', 'Output/A.mat'))
sub14_object_A_right = A_subj
load(fullfile(path4, 'SUB15', 'Output/A.mat'))
sub15_object_A_right = A_subj
load(fullfile(path4, 'SUB16', 'Output/A.mat'))
sub16_object_A_right = A_subj
load(fullfile(path4, 'SUB17', 'Output/A.mat'))
sub17_object_A_right = A_subj
load(fullfile(path4, 'SUB18', 'Output/A.mat'))
sub18_object_A_right = A_subj
load(fullfile(path4, 'SUB19', 'Output/A.mat'))
sub19_object_A_right = A_subj
load(fullfile(path4, 'SUB20', 'Output/A.mat'))
sub20_object_A_right = A_subj
load(fullfile(path4, 'SUB21', 'Output/A.mat'))
sub21_object_A_right = A_subj
load(fullfile(path4, 'SUB22', 'Output/A.mat'))
sub22_object_A_right = A_subj
load(fullfile(path4, 'SUB23', 'Output/A.mat'))
sub23_object_A_right = A_subj
load(fullfile(path4, 'SUB24', 'Output/A.mat'))
sub24_object_A_right = A_subj
load(fullfile(path4, 'SUB25', 'Output/A.mat'))
sub25_object_A_right = A_subj
load(fullfile(path4, 'SUB26', 'Output/A.mat'))
sub26_object_A_right = A_subj
load(fullfile(path4, 'SUB27', 'Output/A.mat'))
sub27_object_A_right = A_subj
load(fullfile(path4, 'SUB28', 'Output/A.mat'))
sub28_object_A_right = A_subj

A_tot_subj_object_right = cat(3,sub1_object_A_right,sub2_object_A_right,sub3_object_A_right,sub4_object_A_right,sub5_object_A_right,sub6_object_A_right,sub7_object_A_right,sub8_object_A_right,sub9_object_A_right,sub10_object_A_right, sub11_object_A_right, sub12_object_A_right, sub13_object_A_right, sub14_object_A_right, sub15_object_A_right, sub16_object_A_right, sub17_object_A_right, sub18_object_A_right, sub19_object_A_right, sub20_object_A_right, sub21_object_A_right, sub22_object_A_right, sub23_object_A_right, sub24_object_A_right, sub25_object_A_right, sub26_object_A_right, sub27_object_A_right, sub28_object_A_right)

% One-sample t-test
% [h, p] = ttest(A_tot_subj_action(1,1,:)) % PMC -> PMC
% [h, p] = ttest(A_tot_subj_action(1,2,:)) % PMC -> aIPS
% [h, p] = ttest(A_tot_subj_action(1,3,:)) % PMC -> LOTC
% [h, p] = ttest(A_tot_subj_action(2,1,:)) % aIPS -> PMC
% [h, p] = ttest(A_tot_subj_action(2,2,:)) % aIPS -> aIPS
% [h, p] = ttest(A_tot_subj_action(2,3,:)) % aIPS -> LOTC
% [h, p] = ttest(A_tot_subj_action(3,1,:)) % LOTC -> PMC
% [h, p] = ttest(A_tot_subj_action(3,2,:)) % LOTC -> aIPS
% [h, p] = ttest(A_tot_subj_action(3,3,:)) % LOTC -> LOTC
% 
% [h, p] = ttest(A_tot_subj_object(1,1,:)) % PMC -> PMC
% [h, p] = ttest(A_tot_subj_object(1,2,:)) % PMC -> aIPS
% [h, p] = ttest(A_tot_subj_object(1,3,:)) % PMC -> LOTC
% [h, p] = ttest(A_tot_subj_object(2,1,:)) % aIPS -> PMC
% [h, p] = ttest(A_tot_subj_object(2,2,:)) % aIPS -> aIPS
% [h, p] = ttest(A_tot_subj_object(2,3,:)) % aIPS -> LOTC
% [h, p] = ttest(A_tot_subj_object(3,1,:)) % LOTC -> PMC
% [h, p] = ttest(A_tot_subj_object(3,2,:)) % LOTC -> aIPS
% [h, p] = ttest(A_tot_subj_object(3,3,:)) % LOTC -> LOTC

% Wilcoxon -> signrank (one-sample)
data=A_tot_subj_object_right;
size_data=size(data);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data=data(k,l,:);
       tmp_data=reshape(tmp_data,1,numel(tmp_data));
      [p(k,l), h(k,l)]=signrank(tmp_data);
    end
end


% Two-sample T-test between tasks:
% [h, p] = ttest2(A_tot_subj_object(1,1,:), A_tot_subj_action(1,1,:))
% [h, p] = ttest2(A_tot_subj_object(1,2,:), A_tot_subj_action(1,2,:))
% [h, p] = ttest2(A_tot_subj_object(1,3,:), A_tot_subj_action(1,3,:))
% [h, p] = ttest2(A_tot_subj_object(2,1,:), A_tot_subj_action(2,1,:))
% [h, p] = ttest2(A_tot_subj_object(2,2,:), A_tot_subj_action(2,2,:))
% [h, p] = ttest2(A_tot_subj_object(2,3,:), A_tot_subj_action(2,3,:))
% [h, p] = ttest2(A_tot_subj_object(3,1,:), A_tot_subj_action(3,1,:))
% [h, p] = ttest2(A_tot_subj_object(3,2,:), A_tot_subj_action(3,2,:))
% [h, p] = ttest2(A_tot_subj_object(3,3,:), A_tot_subj_action(3,3,:))

% Wilcoxon -> ranksum (two-samples)
data1=A_tot_subj_action_right;
data2=A_tot_subj_object_right;
size_data=size(data1);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data1=data1(k,l,:);
       tmp_data1=reshape(tmp_data1,1,numel(tmp_data1));
       tmp_data2=data2(k,l,:);
       tmp_data2=reshape(tmp_data2,1,numel(tmp_data2));
      [p(k,l), h(k,l)]=ranksum(tmp_data1, tmp_data2);
    end
end


%% Matrix B
% Action Left
load(fullfile(path1, 'SUB1', 'Output/B.mat'))
sub1_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB2', 'Output/B.mat'))
sub2_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB3', 'Output/B.mat'))
sub3_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB4', 'Output/B.mat'))
sub4_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB5', 'Output/B.mat'))
sub5_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB6', 'Output/B.mat'))
sub6_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB7', 'Output/B.mat'))
sub7_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB8', 'Output/B.mat'))
sub8_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB9', 'Output/B.mat'))
sub9_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB10', 'Output/B.mat'))
sub10_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB11', 'Output/B.mat'))
sub11_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB12', 'Output/B.mat'))
sub12_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB13', 'Output/B.mat'))
sub13_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB14', 'Output/B.mat'))
sub14_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB15', 'Output/B.mat'))
sub15_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB16', 'Output/B.mat'))
sub16_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB17', 'Output/B.mat'))
sub17_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB18', 'Output/B.mat'))
sub18_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB19', 'Output/B.mat'))
sub19_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB20', 'Output/B.mat'))
sub20_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB21', 'Output/B.mat'))
sub21_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB22', 'Output/B.mat'))
sub22_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB23', 'Output/B.mat'))
sub23_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB24', 'Output/B.mat'))
sub24_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB25', 'Output/B.mat'))
sub25_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB26', 'Output/B.mat'))
sub26_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB27', 'Output/B.mat'))
sub27_action_B_left = B_subj(:,:,2)
load(fullfile(path1, 'SUB28', 'Output/B.mat'))
sub28_action_B_left = B_subj(:,:,2)

B_tot_subj_action_left = cat(3,sub1_action_B_left,sub2_action_B_left,sub3_action_B_left,sub4_action_B_left,sub5_action_B_left,sub6_action_B_left,sub7_action_B_left,sub8_action_B_left,sub9_action_B_left,sub10_action_B_left, sub11_action_B_left, sub12_action_B_left, sub13_action_B_left, sub14_action_B_left, sub15_action_B_left, sub16_action_B_left, sub17_action_B_left, sub18_action_B_left, sub19_action_B_left, sub20_action_B_left, sub21_action_B_left, sub22_action_B_left, sub23_action_B_left, sub24_action_B_left, sub25_action_B_left, sub26_action_B_left, sub27_action_B_left, sub28_action_B_left)

% Object Task
load(fullfile(path2, 'SUB1', 'Output/B.mat'))
sub1_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB2', 'Output/B.mat'))
sub2_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB3', 'Output/B.mat'))
sub3_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB4', 'Output/B.mat'))
sub4_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB5', 'Output/B.mat'))
sub5_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB6', 'Output/B.mat'))
sub6_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB7', 'Output/B.mat'))
sub7_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB8', 'Output/B.mat'))
sub8_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB9', 'Output/B.mat'))
sub9_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB10', 'Output/B.mat'))
sub10_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB11', 'Output/B.mat'))
sub11_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB12', 'Output/B.mat'))
sub12_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB13', 'Output/B.mat'))
sub13_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB14', 'Output/B.mat'))
sub14_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB15', 'Output/B.mat'))
sub15_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB16', 'Output/B.mat'))
sub16_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB17', 'Output/B.mat'))
sub17_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB18', 'Output/B.mat'))
sub18_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB19', 'Output/B.mat'))
sub19_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB20', 'Output/B.mat'))
sub20_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB21', 'Output/B.mat'))
sub21_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB22', 'Output/B.mat'))
sub22_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB23', 'Output/B.mat'))
sub23_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB24', 'Output/B.mat'))
sub24_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB25', 'Output/B.mat'))
sub25_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB26', 'Output/B.mat'))
sub26_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB27', 'Output/B.mat'))
sub27_object_B_left = B_subj(:,:,2)
load(fullfile(path2, 'SUB28', 'Output/B.mat'))
sub28_object_B_left = B_subj(:,:,2)

B_tot_subj_object_left = cat(3,sub1_object_B_left,sub2_object_B_left,sub3_object_B_left,sub4_object_B_left,sub5_object_B_left,sub6_object_B_left,sub7_object_B_left,sub8_object_B_left,sub9_object_B_left,sub10_object_B_left, sub11_object_B_left, sub12_object_B_left, sub13_object_B_left, sub14_object_B_left, sub15_object_B_left, sub16_object_B_left, sub17_object_B_left, sub18_object_B_left, sub19_object_B_left, sub20_object_B_left, sub21_object_B_left, sub22_object_B_left, sub23_object_B_left, sub24_object_B_left, sub25_object_B_left, sub26_object_B_left, sub27_object_B_left, sub28_object_B_left)

%% Matrix B
% Action right
load(fullfile(path3, 'SUB1', 'Output/B.mat'))
sub1_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB2', 'Output/B.mat'))
sub2_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB3', 'Output/B.mat'))
sub3_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB4', 'Output/B.mat'))
sub4_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB5', 'Output/B.mat'))
sub5_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB6', 'Output/B.mat'))
sub6_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB7', 'Output/B.mat'))
sub7_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB8', 'Output/B.mat'))
sub8_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB9', 'Output/B.mat'))
sub9_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB10', 'Output/B.mat'))
sub10_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB11', 'Output/B.mat'))
sub11_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB12', 'Output/B.mat'))
sub12_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB13', 'Output/B.mat'))
sub13_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB14', 'Output/B.mat'))
sub14_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB15', 'Output/B.mat'))
sub15_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB16', 'Output/B.mat'))
sub16_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB17', 'Output/B.mat'))
sub17_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB18', 'Output/B.mat'))
sub18_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB19', 'Output/B.mat'))
sub19_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB20', 'Output/B.mat'))
sub20_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB21', 'Output/B.mat'))
sub21_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB22', 'Output/B.mat'))
sub22_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB23', 'Output/B.mat'))
sub23_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB24', 'Output/B.mat'))
sub24_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB25', 'Output/B.mat'))
sub25_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB26', 'Output/B.mat'))
sub26_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB27', 'Output/B.mat'))
sub27_action_B_right = B_subj(:,:,2)
load(fullfile(path3, 'SUB28', 'Output/B.mat'))
sub28_action_B_right = B_subj(:,:,2)

B_tot_subj_action_right = cat(3,sub1_action_B_right,sub2_action_B_right,sub3_action_B_right,sub4_action_B_right,sub5_action_B_right,sub6_action_B_right,sub7_action_B_right,sub8_action_B_right,sub9_action_B_right,sub10_action_B_right, sub11_action_B_right, sub12_action_B_right, sub13_action_B_right, sub14_action_B_right, sub15_action_B_right, sub16_action_B_right, sub17_action_B_right, sub18_action_B_right, sub19_action_B_right, sub20_action_B_right, sub21_action_B_right, sub22_action_B_right, sub23_action_B_right, sub24_action_B_right, sub25_action_B_right, sub26_action_B_right, sub27_action_B_right, sub28_action_B_right)

% Object Task
load(fullfile(path4, 'SUB1', 'Output/B.mat'))
sub1_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB2', 'Output/B.mat'))
sub2_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB3', 'Output/B.mat'))
sub3_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB4', 'Output/B.mat'))
sub4_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB5', 'Output/B.mat'))
sub5_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB6', 'Output/B.mat'))
sub6_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB7', 'Output/B.mat'))
sub7_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB8', 'Output/B.mat'))
sub8_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB9', 'Output/B.mat'))
sub9_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB10', 'Output/B.mat'))
sub10_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB11', 'Output/B.mat'))
sub11_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB12', 'Output/B.mat'))
sub12_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB13', 'Output/B.mat'))
sub13_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB14', 'Output/B.mat'))
sub14_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB15', 'Output/B.mat'))
sub15_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB16', 'Output/B.mat'))
sub16_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB17', 'Output/B.mat'))
sub17_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB18', 'Output/B.mat'))
sub18_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB19', 'Output/B.mat'))
sub19_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB20', 'Output/B.mat'))
sub20_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB21', 'Output/B.mat'))
sub21_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB22', 'Output/B.mat'))
sub22_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB23', 'Output/B.mat'))
sub23_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB24', 'Output/B.mat'))
sub24_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB25', 'Output/B.mat'))
sub25_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB26', 'Output/B.mat'))
sub26_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB27', 'Output/B.mat'))
sub27_object_B_right = B_subj(:,:,2)
load(fullfile(path4, 'SUB28', 'Output/B.mat'))
sub28_object_B_right = B_subj(:,:,2)

B_tot_subj_object_right = cat(3,sub1_object_B_right,sub2_object_B_right,sub3_object_B_right,sub4_object_B_right,sub5_object_B_right,sub6_object_B_right,sub7_object_B_right,sub8_object_B_right,sub9_object_B_right,sub10_object_B_right, sub11_object_B_right, sub12_object_B_right, sub13_object_B_right, sub14_object_B_right, sub15_object_B_right, sub16_object_B_right, sub17_object_B_right, sub18_object_B_right, sub19_object_B_right, sub20_object_B_right, sub21_object_B_right, sub22_object_B_right, sub23_object_B_right, sub24_object_B_right, sub25_object_B_right, sub26_object_B_right, sub27_object_B_right, sub28_object_B_right)

% One-sample t-test
% [h, p] = ttest(B_tot_subj_action(1,2,:)) % PMC -> aIPS
% [h, p] = ttest(B_tot_subj_action(1,3,:)) % PMC -> LOTC
% [h, p] = ttest(B_tot_subj_action(2,1,:)) % aIPS -> PMC
% [h, p] = ttest(B_tot_subj_action(2,3,:)) % aIPS -> LOTC
% [h, p] = ttest(B_tot_subj_action(3,1,:)) % LOTC -> PMC
% [h, p] = ttest(B_tot_subj_action(3,2,:)) % LOTC -> aIPS
% 
% [h, p] = ttest(B_tot_subj_object(1,2,:)) % PMC -> aIPS
% [h, p] = ttest(B_tot_subj_object(1,3,:)) % PMC -> LOTC
% [h, p] = ttest(B_tot_subj_object(2,1,:)) % aIPS -> PMC
% [h, p] = ttest(B_tot_subj_object(2,3,:)) % aIPS -> LOTC
% [h, p] = ttest(B_tot_subj_object(3,1,:)) % LOTC -> PMC
% [h, p] = ttest(B_tot_subj_object(3,2,:)) % LOTC -> aIPS

% Wilcoxon -> signrank (one-sample)
data=B_tot_subj_object_left;
size_data=size(data);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data=data(k,l,:); % extract values in a certain position
       tmp_data=reshape(tmp_data,1,numel(tmp_data)); %reshape the organization of the data in a vector
      [p(k,l), h(k,l)]=signrank(tmp_data);
    end
end


% Two-sample T-test between tasks:
% [h, p] = ttest2(B_tot_subj_object(1,2,:), B_tot_subj_action(1,2,:))
% [h, p] = ttest2(B_tot_subj_object(1,3,:), B_tot_subj_action(1,3,:))
% [h, p] = ttest2(B_tot_subj_object(2,1,:), B_tot_subj_action(2,1,:))
% [h, p] = ttest2(B_tot_subj_object(2,3,:), B_tot_subj_action(2,3,:))
% [h, p] = ttest2(B_tot_subj_object(3,1,:), B_tot_subj_action(3,1,:))
% [h, p] = ttest2(B_tot_subj_object(3,2,:), B_tot_subj_action(3,2,:))

% Wilcoxon -> ranksum (two-samples)
data1=B_tot_subj_action_right;
data2=B_tot_subj_object_right;
size_data=size(data1);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data1=data1(k,l,:);
       tmp_data1=reshape(tmp_data1,1,numel(tmp_data1));
       tmp_data2=data2(k,l,:);
       tmp_data2=reshape(tmp_data2,1,numel(tmp_data2));
      [p(k,l), h(k,l)]=ranksum(tmp_data1, tmp_data2);
    end
end


%% Comparison matrix A and B:

% Create the mean of matrix A and put = 0 the values on the diagonal of matrix A
% Left
sub1_A_left = (sub1_action_A_left + sub1_object_A_left)/2
sub1_A_left_d =  sub1_A_left-diag(diag(sub1_A_left))
sub2_A_left = (sub2_action_A_left + sub2_object_A_left)/2
sub2_A_left_d =  sub2_A_left-diag(diag(sub2_A_left))
sub3_A_left = (sub3_action_A_left + sub3_object_A_left)/2
sub3_A_left_d =  sub3_A_left-diag(diag(sub3_A_left))
sub4_A_left = (sub4_action_A_left + sub4_object_A_left)/2
sub4_A_left_d =  sub4_A_left-diag(diag(sub4_A_left))
sub5_A_left = (sub5_action_A_left + sub5_object_A_left)/2
sub5_A_left_d =  sub5_A_left-diag(diag(sub5_A_left))
sub6_A_left = (sub6_action_A_left + sub6_object_A_left)/2
sub6_A_left_d =  sub6_A_left-diag(diag(sub6_A_left))
sub7_A_left = (sub7_action_A_left + sub7_object_A_left)/2
sub7_A_left_d =  sub7_A_left-diag(diag(sub7_A_left))
sub8_A_left = (sub8_action_A_left + sub8_object_A_left)/2
sub8_A_left_d =  sub8_A_left-diag(diag(sub8_A_left))
sub9_A_left = (sub9_action_A_left + sub9_object_A_left)/2
sub9_A_left_d =  sub9_A_left-diag(diag(sub9_A_left))
sub10_A_left = (sub10_action_A_left + sub10_object_A_left)/2
sub10_A_left_d =  sub10_A_left-diag(diag(sub10_A_left))
sub11_A_left = (sub11_action_A_left + sub11_object_A_left)/2
sub11_A_left_d =  sub11_A_left-diag(diag(sub11_A_left))
sub12_A_left = (sub12_action_A_left + sub12_object_A_left)/2
sub12_A_left_d =  sub12_A_left-diag(diag(sub12_A_left))
sub13_A_left = (sub13_action_A_left + sub13_object_A_left)/2
sub13_A_left_d =  sub13_A_left-diag(diag(sub13_A_left))
sub14_A_left = (sub14_action_A_left + sub14_object_A_left)/2
sub14_A_left_d =  sub14_A_left-diag(diag(sub14_A_left))
sub15_A_left = (sub15_action_A_left + sub15_object_A_left)/2
sub15_A_left_d =  sub15_A_left-diag(diag(sub15_A_left))
sub16_A_left = (sub16_action_A_left + sub16_object_A_left)/2
sub16_A_left_d =  sub16_A_left-diag(diag(sub16_A_left))
sub17_A_left = (sub17_action_A_left + sub17_object_A_left)/2
sub17_A_left_d =  sub17_A_left-diag(diag(sub17_A_left))
sub18_A_left = (sub18_action_A_left + sub18_object_A_left)/2
sub18_A_left_d =  sub18_A_left-diag(diag(sub18_A_left))
sub19_A_left = (sub19_action_A_left + sub19_object_A_left)/2
sub19_A_left_d =  sub19_A_left-diag(diag(sub19_A_left))
sub20_A_left = (sub20_action_A_left + sub20_object_A_left)/2
sub20_A_left_d =  sub20_A_left-diag(diag(sub20_A_left))
sub21_A_left = (sub21_action_A_left + sub21_object_A_left)/2
sub21_A_left_d =  sub21_A_left-diag(diag(sub21_A_left))
sub22_A_left = (sub22_action_A_left + sub22_object_A_left)/2
sub22_A_left_d =  sub22_A_left-diag(diag(sub22_A_left))
sub23_A_left = (sub23_action_A_left + sub23_object_A_left)/2
sub23_A_left_d =  sub23_A_left-diag(diag(sub23_A_left))
sub24_A_left = (sub24_action_A_left + sub24_object_A_left)/2
sub24_A_left_d =  sub24_A_left-diag(diag(sub24_A_left))
sub25_A_left = (sub25_action_A_left + sub25_object_A_left)/2
sub25_A_left_d =  sub25_A_left-diag(diag(sub25_A_left))
sub26_A_left = (sub26_action_A_left + sub26_object_A_left)/2
sub26_A_left_d =  sub26_A_left-diag(diag(sub26_A_left))
sub27_A_left = (sub27_action_A_left + sub27_object_A_left)/2
sub27_A_left_d =  sub27_A_left-diag(diag(sub27_A_left))
sub28_A_left = (sub28_action_A_left + sub28_object_A_left)/2
sub28_A_left_d =  sub28_A_left-diag(diag(sub28_A_left))

A_tot_subj_left_d = cat(3,sub1_A_left_d,sub2_A_left_d,sub3_A_left_d,sub4_A_left_d,sub5_A_left_d,sub6_A_left_d,sub7_A_left_d,sub8_A_left_d,sub9_A_left_d,sub10_A_left_d, sub11_A_left_d, sub12_A_left_d, sub13_A_left_d, sub14_A_left_d, sub15_A_left_d, sub16_A_left_d, sub17_A_left_d, sub18_A_left_d, sub19_A_left_d, sub20_A_left_d, sub21_A_left_d, sub22_A_left_d, sub23_A_left_d, sub24_A_left_d, sub25_A_left_d, sub26_A_left_d, sub27_A_left_d, sub28_A_left_d)
% with the diagonal:
A_tot_subj_left = cat(3,sub1_A_left,sub2_A_left,sub3_A_left,sub4_A_left,sub5_A_left,sub6_A_left,sub7_A_left,sub8_A_left,sub9_A_left,sub10_A_left, sub11_A_left, sub12_A_left, sub13_A_left, sub14_A_left, sub15_A_left, sub16_A_left, sub17_A_left, sub18_A_left, sub19_A_left, sub20_A_left, sub21_A_left, sub22_A_left, sub23_A_left, sub24_A_left, sub25_A_left, sub26_A_left, sub27_A_left, sub28_A_left)


% right hemisphere:
sub1_A_right = (sub1_action_A_right + sub1_object_A_right)/2
sub1_A_right_d =  sub1_A_right-diag(diag(sub1_A_right))
sub2_A_right = (sub2_action_A_right + sub2_object_A_right)/2
sub2_A_right_d =  sub2_A_right-diag(diag(sub2_A_right))
sub3_A_right = (sub3_action_A_right + sub3_object_A_right)/2
sub3_A_right_d =  sub3_A_right-diag(diag(sub3_A_right))
sub4_A_right = (sub4_action_A_right + sub4_object_A_right)/2
sub4_A_right_d =  sub4_A_right-diag(diag(sub4_A_right))
sub5_A_right = (sub5_action_A_right + sub5_object_A_right)/2
sub5_A_right_d =  sub5_A_right-diag(diag(sub5_A_right))
sub6_A_right = (sub6_action_A_right + sub6_object_A_right)/2
sub6_A_right_d =  sub6_A_right-diag(diag(sub6_A_right))
sub7_A_right = (sub7_action_A_right + sub7_object_A_right)/2
sub7_A_right_d =  sub7_A_right-diag(diag(sub7_A_right))
sub8_A_right = (sub8_action_A_right + sub8_object_A_right)/2
sub8_A_right_d =  sub8_A_right-diag(diag(sub8_A_right))
sub9_A_right = (sub9_action_A_right + sub9_object_A_right)/2
sub9_A_right_d =  sub9_A_right-diag(diag(sub9_A_right))
sub10_A_right = (sub10_action_A_right + sub10_object_A_right)/2
sub10_A_right_d =  sub10_A_right-diag(diag(sub10_A_right))
sub11_A_right = (sub11_action_A_right + sub11_object_A_right)/2
sub11_A_right_d =  sub11_A_right-diag(diag(sub11_A_right))
sub12_A_right = (sub12_action_A_right + sub12_object_A_right)/2
sub12_A_right_d =  sub12_A_right-diag(diag(sub12_A_right))
sub13_A_right = (sub13_action_A_right + sub13_object_A_right)/2
sub13_A_right_d =  sub13_A_right-diag(diag(sub13_A_right))
sub14_A_right = (sub14_action_A_right + sub14_object_A_right)/2
sub14_A_right_d =  sub14_A_right-diag(diag(sub14_A_right))
sub15_A_right = (sub15_action_A_right + sub15_object_A_right)/2
sub15_A_right_d =  sub15_A_right-diag(diag(sub15_A_right))
sub16_A_right = (sub16_action_A_right + sub16_object_A_right)/2
sub16_A_right_d =  sub16_A_right-diag(diag(sub16_A_right))
sub17_A_right = (sub17_action_A_right + sub17_object_A_right)/2
sub17_A_right_d =  sub17_A_right-diag(diag(sub17_A_right))
sub18_A_right = (sub18_action_A_right + sub18_object_A_right)/2
sub18_A_right_d =  sub18_A_right-diag(diag(sub18_A_right))
sub19_A_right = (sub19_action_A_right + sub19_object_A_right)/2
sub19_A_right_d =  sub19_A_right-diag(diag(sub19_A_right))
sub20_A_right = (sub20_action_A_right + sub20_object_A_right)/2
sub20_A_right_d =  sub20_A_right-diag(diag(sub20_A_right))
sub21_A_right = (sub21_action_A_right + sub21_object_A_right)/2
sub21_A_right_d =  sub21_A_right-diag(diag(sub21_A_right))
sub22_A_right = (sub22_action_A_right + sub22_object_A_right)/2
sub22_A_right_d =  sub22_A_right-diag(diag(sub22_A_right))
sub23_A_right = (sub23_action_A_right + sub23_object_A_right)/2
sub23_A_right_d =  sub23_A_right-diag(diag(sub23_A_right))
sub24_A_right = (sub24_action_A_right + sub24_object_A_right)/2
sub24_A_right_d =  sub24_A_right-diag(diag(sub24_A_right))
sub25_A_right = (sub25_action_A_right + sub25_object_A_right)/2
sub25_A_right_d =  sub25_A_right-diag(diag(sub25_A_right))
sub26_A_right = (sub26_action_A_right + sub26_object_A_right)/2
sub26_A_right_d =  sub26_A_right-diag(diag(sub26_A_right))
sub27_A_right = (sub27_action_A_right + sub27_object_A_right)/2
sub27_A_right_d =  sub27_A_right-diag(diag(sub27_A_right))
sub28_A_right = (sub28_action_A_right + sub28_object_A_right)/2
sub28_A_right_d =  sub28_A_right-diag(diag(sub28_A_right))

A_tot_subj_right_d = cat(3,sub1_A_right_d,sub2_A_right_d,sub3_A_right_d,sub4_A_right_d,sub5_A_right_d,sub6_A_right_d,sub7_A_right_d,sub8_A_right_d,sub9_A_right_d,sub10_A_right_d, sub11_A_right_d, sub12_A_right_d, sub13_A_right_d, sub14_A_right_d, sub15_A_right_d, sub16_A_right_d, sub17_A_right_d, sub18_A_right_d, sub19_A_right_d, sub20_A_right_d, sub21_A_right_d, sub22_A_right_d, sub23_A_right_d, sub24_A_right_d, sub25_A_right_d, sub26_A_right_d, sub27_A_right_d, sub28_A_right_d)
% with the diagonal:
A_tot_subj_right = cat(3,sub1_A_right,sub2_A_right,sub3_A_right,sub4_A_right,sub5_A_right,sub6_A_right,sub7_A_right,sub8_A_right,sub9_A_right,sub10_A_right, sub11_A_right, sub12_A_right, sub13_A_right, sub14_A_right, sub15_A_right, sub16_A_right, sub17_A_right, sub18_A_right, sub19_A_right, sub20_A_right, sub21_A_right, sub22_A_right, sub23_A_right, sub24_A_right, sub25_A_right, sub26_A_right, sub27_A_right, sub28_A_right)

% Mean values matrix a -> left and right hemisphere
Matrix_A_mean_left = (sub1_A_left + sub2_A_left + sub3_A_left + sub4_A_left + sub5_A_left + sub6_A_left + sub7_A_left + sub8_A_left + sub9_A_left + sub10_A_left + sub11_A_left +  sub12_A_left +  sub13_A_left + sub14_A_left + sub15_A_left + sub16_A_left + sub17_A_left + sub18_A_left + sub19_A_left + sub20_A_left + sub21_A_left + sub22_A_left + sub23_A_left + sub24_A_left + sub25_A_left + sub26_A_left + sub27_A_left + sub28_A_left)/28
Matrix_A_mean_right = (sub1_A_right + sub2_A_right + sub3_A_right + sub4_A_right + sub5_A_right + sub6_A_right + sub7_A_right + sub8_A_right + sub9_A_right + sub10_A_right + sub11_A_right +  sub12_A_right +  sub13_A_right + sub14_A_right + sub15_A_right + sub16_A_right + sub17_A_right + sub18_A_right + sub19_A_right + sub20_A_right + sub21_A_right + sub22_A_right + sub23_A_right + sub24_A_right + sub25_A_right + sub26_A_right + sub27_A_right + sub28_A_right)/28


% Wilcoxon -> signrank (one-sample)
data=A_tot_subj_object_right;
size_data=size(data);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data=data(k,l,:); % extract values in a certain position
       tmp_data=reshape(tmp_data,1,numel(tmp_data)); %reshape the organization of the data in a vector
      [p(k,l), h(k,l)]=signrank(tmp_data);
    end
end


% Wilcoxon -> ranksum (two-samples)
data1=A_tot_subj_action_left;
data2=A_tot_subj_action_right;
size_data=size(data1);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data1=data1(k,l,:);
       tmp_data1=reshape(tmp_data1,1,numel(tmp_data1));
       tmp_data2=data2(k,l,:);
       tmp_data2=reshape(tmp_data2,1,numel(tmp_data2));
      [p(k,l), h(k,l)]=ranksum(tmp_data1, tmp_data2);
    end
end



%% Testing the variance
% Entire matrices
[h,p,stats] = vartest2(A_tot_subj_object(:), A_tot_subj_action(:))
[h,p,stats] = vartest2(B_tot_subj_object(:), B_tot_subj_action(:))

% For single elements within the matrices:
% Matrix A
[h,p,stats] = vartest2(A_tot_subj_object(1,1,:), A_tot_subj_action(1,1,:))
[h,p,stats] = vartest2(A_tot_subj_object(1,2,:), A_tot_subj_action(1,2,:))
[h,p,stats] = vartest2(A_tot_subj_object(1,3,:), A_tot_subj_action(1,3,:))
[h,p,stats] = vartest2(A_tot_subj_object(2,1,:), A_tot_subj_action(2,1,:))
[h,p,stats] = vartest2(A_tot_subj_object(2,2,:), A_tot_subj_action(2,2,:))
[h,p,stats] = vartest2(A_tot_subj_object(2,3,:), A_tot_subj_action(2,3,:))
[h,p,stats] = vartest2(A_tot_subj_object(3,1,:), A_tot_subj_action(3,1,:))
[h,p,stats] = vartest2(A_tot_subj_object(3,2,:), A_tot_subj_action(3,2,:))
[h,p,stats] = vartest2(A_tot_subj_object(3,3,:), A_tot_subj_action(3,3,:))
% For single elements within the matrices:
% Matrix B
[h,p,stats] = vartest2(B_tot_subj_object(1,2,:), B_tot_subj_action(1,2,:))
[h,p,stats] = vartest2(B_tot_subj_object(1,3,:), B_tot_subj_action(1,3,:))
[h,p,stats] = vartest2(B_tot_subj_object(2,1,:), B_tot_subj_action(2,1,:))
[h,p,stats] = vartest2(B_tot_subj_object(2,3,:), B_tot_subj_action(2,3,:))
[h,p,stats] = vartest2(B_tot_subj_object(3,1,:), B_tot_subj_action(3,1,:))
[h,p,stats] = vartest2(B_tot_subj_object(3,2,:), B_tot_subj_action(3,2,:))

% Boxplot to represent the data:
x=sort(A_tot_subj_action(:)); % vertical vector of data
y=sort(A_tot_subj_object(:)); % vertical vector of data1
x1=sort(B_tot_subj_action(:)); % vertical vector of data
y1=sort(B_tot_subj_object(:)); % vertical vector of data1
subplot(1,4,1); boxplot(x); 
xlabel('Strength', 'FontSize', 16)
ylabel('Count', 'FontSize', 16)
ylim([-1.5 1.5])
title('Matrix A Action', 'FontSize', 22)
subplot(1,4,2); boxplot(y);
xlabel('Strength', 'FontSize', 16)
ylabel('Count', 'FontSize', 16)
ylim([-1.5 1.5])
title('Matrix A Object', 'FontSize', 22)
subplot(1,4,3); boxplot(x1); 
xlabel('Strength', 'FontSize', 20)
ylabel('Count', 'FontSize', 20)
ylim([-1.5 1.5])
title('Matrix B Action', 'FontSize', 26)
subplot(1,4,4); boxplot(y1);
xlabel('Strength', 'FontSize', 20)
ylabel('Count', 'FontSize', 20)
ylim([-1.5 1.5])
title('Matrix B Object', 'FontSize', 26)


%% Testing the normality of the data:
% Representation of the distribution - histogram
x=sort(A_tot_subj_action(:)); % vertical vector of data
y=sort(A_tot_subj_object(:)); % vertical vector of data1
x1=sort(B_tot_subj_action(:)); % vertical vector of data
y1=sort(B_tot_subj_object(:)); % vertical vector of data1
subplot(1,4,1); histogram(x); 
xlabel('Strength', 'FontSize', 16)
ylabel('Count', 'FontSize', 16)
title('Matrix A Action', 'FontSize', 22)
subplot(1,4,2); histogram(y);
xlabel('Strength', 'FontSize', 16)
ylabel('Count', 'FontSize', 16)
title('Matrix A Object', 'FontSize', 22)
subplot(1,4,3); histogram(x1); 
xlabel('Strength', 'FontSize', 16)
ylabel('Count', 'FontSize', 16)
title('Matrix B Action', 'FontSize', 22)
subplot(1,4,4); histogram(y1);
xlabel('Strength', 'FontSize', 16)
ylabel('Count', 'FontSize', 16)
title('Matrix B Object', 'FontSize', 22)

% One-sample Kolmogorov-Smirnov test:
data=A_tot_subj_object; % change the reference matrix
size_data=size(data);
p=zeros(size_data(1),size_data(2));
p(:,:)=NaN;
h=zeros(size_data(1),size_data(2));
h(:,:)=NaN;
for k=1:size_data(1)
    for l=1:size_data(2)
       tmp_data=data(k,l,:);
       tmp_data=reshape(tmp_data,1,numel(tmp_data));
      [h(k,l), p(k,l)]=kstest(tmp_data);
    end
end

% One-sample Kolmogorov-Smirnov test: the data in vector x comes from a standard normal distribution (mean 0, std 1).
% kstest
% Lilliefors test:  the data in vector x comes from a distribution in the normal family.
% lillietest
% Anderson-Darling test:  the data in vector x is from a population with a normal distribution.
% adtest


%% Variance explained by the model:
% Action Task
path = '/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Action_Task'
for s = 1 % number of subject
        fullfile(path,sprintf('SUB%d',s), sprintf('DCM_%d_Right',57));
        cd (path)
        A = load(sprintf('SUB%d/DCM_%d_Right.mat',s, 57));
        spm_dcm_fmri_check(A.DCM)
end
var_explained_action_right = [72 66 59 59 79 51 42 55 59 63 62 41 67 50 35 65 71 49 75 55 70 49 63 42 53 38 35 48]
mean(var_explained_action_right)
std(var_explained_action_right)

path = '/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Action_Task'
for s = 28 % number of subject
        fullfile(path,sprintf('SUB%d',s), sprintf('DCM_%d_Left',57));
        cd (path)
        A = load(sprintf('SUB%d/DCM_%d_Left.mat',s, 57));
        spm_dcm_fmri_check(A.DCM)
end
var_explained_action_left = [67 76 57 65 79 54 38 70 52 64 70 35 73 59 36 75 66 63 71 59 78 45 62 42 55 49 61 55]
mean(var_explained_action_left)
std(var_explained_action_left)

% Object Task
path = '/home/caterina/Documents/ACROB/5_DCM_Right/Adjusted_F/Object_Task'
for s = 4 % number of subject
        fullfile(path,sprintf('SUB%d',s), sprintf('DCM_%d_Right',57));
        cd (path)
        A = load(sprintf('SUB%d/DCM_%d_Right.mat',s, 57));
        spm_dcm_fmri_check(A.DCM)
end
var_explained_object_right = [72 66 59 59 79 51 41 55 59 62 61 41 67 50 35 65 71 49 75 55 70 49 62 42 53 38 38 46]
mean(var_explained_object_right)
std(var_explained_object_right)

path = '/home/caterina/Documents/ACROB/5_DCM_Left/Adjusted_F/Object_Task'
for s = 1 % number of subject
        fullfile(path,sprintf('SUB%d',s), sprintf('DCM_%d_Left',57));
        cd (path)
        A = load(sprintf('SUB%d/DCM_%d_Left.mat',s, 57));
        spm_dcm_fmri_check(A.DCM)
end
var_explained_object_left = [67 77 57 65 79 53 38 70 52 64 70 36 73 59 37 75 66 63 70 59 78 45 62 42 55 49 61 55]
mean(var_explained_object_left)
std(var_explained_object_left)

% Plot of the explained variance
x=var_explained_action_right; 
y=var_explained_action_left
x1=var_explained_object_right
y1=var_explained_object_left
subplot(1,4,1); boxplot(x); 
xlabel('Explained Variance', 'FontSize', 22)
ylabel('Percentate', 'FontSize', 22)
title({'Explained Variance', ' Winning Model Action Task', 'Right Hemisphere'}, 'FontSize', 22)
subplot(1,4,2); boxplot(x1); 
xlabel('Explained Variance', 'FontSize', 22)
ylabel('Percentate', 'FontSize', 22)
title({'Explained Variance', ' Winning Model Object Task', 'Right Hemisphere'}, 'FontSize', 22)
subplot(1,4,3); boxplot(y); 
xlabel('Explained Variance', 'FontSize', 22)
ylabel('Percentate', 'FontSize', 22)
title({'Explained Variance', ' Winning Model Action Task', 'Left Hemisphere'}, 'FontSize', 22)
subplot(1,4,4); boxplot(y1); 
xlabel('Explained Variance', 'FontSize', 22)
ylabel('Percentate', 'FontSize', 22)
title({'Explained Variance', ' Winning Model Object Task', 'Left Hemisphere'}, 'FontSize', 22)
