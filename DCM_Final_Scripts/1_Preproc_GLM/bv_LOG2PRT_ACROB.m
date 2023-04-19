function [prt] = bv_LOG2PRT_ACROB(subject, run)
%created: Angelika Lingnau 2012-08-03
%example call: 
%[prt] = bv_LOG2PRT_ACROB(1, 6)

Cfg.skipNVol=4; 
Cfg.TR = 2;
pathToLog = '/home/caterina/Documents/ACROB/logfiles/';
logName  = [pathToLog sprintf('ACROB_SUB%02d_RUN%02d.mat', subject, run)];
prt.name = [pathToLog sprintf('SUB%02d_%02d_ACROB.prt', subject, run)];

%----------------------------------------------------------------
%ASSIGN COLOR CODE
% cmap (i,:) =  [ 0     0   143; ...
%           0    32   255; ...
%           0   175   255; ...
%          64   255   191; ...
%         207   255    48; ...
%         255   159     0; ...
%         255    16     0; ...
%         128     0     0]; % original version

cmap =  [ 0     0   143; ...
          0    32   255; ...
          0   175   255; ...
         64   255   191; ...
        207   255    48; ...
        255   159     0; ...
        255    16     0; ...
        128     0     0];
 
nConds=16;
for i=1:nConds
cmap(i,:) = [randi([0 255],1) randi([0 255],1) randi([0 255],1)];
end

Cfg.durSec = 2;

% trial codes:          0  --> baseline
%                       1  --> warm up
%                       2  --> cool down
%                       3  --> action block instruction
%                       4  --> object block instruction
%                       11 --> action task, cutting, apple
%                       12 --> action task, cutting, potato 
%                       13 --> action task, peeling, apple
%                       14 --> action task, peeling, potato 
%                       15 --> object task, cutting, apple
%                       16 --> object task, cutting, potato 
%                       17 --> object task, peeling, apple
%                       18 --> object task, peeling, potato 

condNames=     {'ActA_ObjA_TaskA'; 'ActA_ObjB_TaskA'; 'ActB_ObjA_TaskA'; 'ActB_ObjB_TaskA'; ...
                'ActA_ObjA_TaskB'; 'ActA_ObjB_TaskB'; 'ActB_ObjA_TaskB'; 'ActB_ObjB_TaskB'};
        
load(logName);

nTrials = length(ExpInfo.TrialInfo);
for i = 1 : nTrials
    ID(i) = ExpInfo.TrialInfo(i).trial.code;
    t (i) = [ExpInfo.TrialInfo(i).tStart];
end

codeVec = [11:1:18];
%-------------------------------------------------------
prt.Experiment=sprintf('ACROB');
    
prt.NrOfConditions = length(condNames);  

for i = 1 : length(codeVec)
    if isempty(find(ID==codeVec(i)))
        dat{i}.tStart = [];
    else
        %dat{i}.tStart = (t(find(ID==codeVec(i))) - (Cfg.skipNVol * Cfg.TR)) * 1000;
        dat{i}.tStart = (t(find(ID==codeVec(i))) - (Cfg.skipNVol * Cfg.TR)); % secs
    end
end
 
for i=1:prt.NrOfConditions
    prt.Condition{i}.name=char(condNames(i));
end

for c = 1:prt.NrOfConditions
    prt.Condition{c}.estart = round(dat{c}.tStart);
    %prt.Condition{c}.eend = round(prt.Condition{c}.estart + (Cfg.durSec * 1000)); %REQUIRES msec resolution
    prt.Condition{c}.eend = round(prt.Condition{c}.estart + (Cfg.durSec)); %secs
    prt.Condition{c}.ntpts = length(prt.Condition{c}.estart);
    prt.Condition{c}.color = cmap(c,:);
end

prt = bv_prt_write(prt)



function prt = bv_prt_write(prt, varargin)
%function prt = bv_prt_write(prt, varargin)
%Writes a Brainvoager protocol file (.prt) based on the input structure prt
%which must contain the following fields:
%.name (the full name of the protocol file to be created)
%.NrOfConditions
%.Condition{:} (cell array of conditions, each one containing the fields
%               name, ntpts, estart, eend, color)
%SEE ALSO bv_read_prt.m
%Jens.Schwarzbach@form.unitn.it 20071121
%al 2011-11-19 added parametric weights

if ~isfield(prt, 'FileVersion'), prt.FileVersion = 2; end
%if ~isfield(prt, 'ResolutionOfTime'), prt.ResolutionOfTime = 'msec'; end
if ~isfield(prt, 'ResolutionOfTime'), prt.ResolutionOfTime = 'sec'; end
if ~isfield(prt, 'Experiment'), prt.Experiment = '<none>'; end
if ~isfield(prt, 'BackgroundColor'), prt.BackgroundColor = [0 , 0, 0]; end
if ~isfield(prt, 'TextColor'), prt.TextColor = [255, 255, 255]; end
if ~isfield(prt, 'TimeCourseColor'), prt.TimeCourseColor = [255, 255, 255]; end
if ~isfield(prt, 'TimeCourseThick'), prt.TimeCourseThick = 2; end
if ~isfield(prt, 'ReferenceFuncColor'), prt.ReferenceFuncColor = [0, 255, 0]; end
if ~isfield(prt, 'ReferenceFuncThick'), prt.ReferenceFuncThick = 1; end

if ~isfield(prt, 'ParametricWeights'), prt.ParametricWeights = 0; end


cfg = [];
if ~isempty(varargin)
    cfg = varargin{1};
end
if ~isfield(cfg, 'CreateEmptyCondition'), cfg.CreateEmptyCondition = 0; end
if ~isfield(cfg, 'AlwaysOverwrite'), cfg.AlwaysOverwrite = 0; end
cfg.AlwaysOverwrite = 1;


%CHECK FOR EXISTENCE OF OUTPUT FILE
if ~cfg.AlwaysOverwrite
    if exist(prt.name, 'file') == 2
        msg = sprintf('File %s already exists. Overwrite?', prt.name);
        ButtonName=questdlg(msg, 'Warning', 'Yes','No','No');
        if strcmp(ButtonName, 'No')
            prt = [];
            return
        end
    end
end


%CREATE AN EXTRA CONDITION FROM EMPTY ENTRIES
if cfg.CreateEmptyCondition
    switch strtok(prt.ResolutionOfTime)
        %case 'msec'
         case 'sec'
            %tres = 1000*cfg.TR;
            tres = cfg.TR;
        case 'volumes'
            tres = 1;
    end
    bl.vec = zeros(cfg.VolumesInRun*tres, 1);
    
    %CREATE A CONDITION FROM ALL EMPTY TIMEPOINTS
    estart = [];
    eend = [];
    for c = 1: prt.NrOfConditions
        estart = [estart(:); prt.Condition{c}.estart(:)];
        eend = [eend(:); prt.Condition{c}.eend(:)];
        for t = 1:length(estart)
            bl.vec(estart(t):eend(t)) = 1;
        end
    end
    cases = find(diff(bl.vec) ~= 0);
    iStart = 1;
    prt.Condition{c+1}.estart = [];
    prt.Condition{c+1}.eend = [];
    prt.Condition{c+1}.name = 'EMPTY';
    prt.Condition{c+1}.color = [128, 128, 128];
    for i = 1:length(cases)
        if bl.vec(cases(i)) == 0
            %LAST tpt of empty condition
            iEnd = cases(i);
            prt.Condition{c+1}.estart = vertcat(prt.Condition{c+1}.estart, iStart);
            prt.Condition{c+1}.eend = vertcat(prt.Condition{c+1}.eend, iEnd);
        else
            %LAST tpt of full condition
            iStart = cases(i) + 1;
        end
    end
    iStart = cases(end) + 1;
    iEnd = length(bl.vec); 
    prt.Condition{c+1}.estart = vertcat(prt.Condition{c+1}.estart, iStart);
    prt.Condition{c+1}.eend = vertcat(prt.Condition{c+1}.eend, iEnd);

    prt.Condition{c+1}.ntpts = length(prt.Condition{c+1}.estart);
    prt.NrOfConditions = c + 1;
end

%WRITE PROTOCOL FILE
fid = fopen(prt.name, 'wt');
if fid == -1
    msg = sprintf('The file %s cannot be opened.', prt.name);
    errordlg(msg, 'FileOpen Error', 1);
    return
end

fprintf(1, 'WRITING %s ...', prt.name)

%[dummy, prt.FileVersion] = fscanf(fid, '%s %d', 1);
fprintf(fid, '\n');
fprintf(fid, 'FileVersion:         %d\n\n', prt.FileVersion);
fprintf(fid, 'ResolutionOfTime: %s\n\n', prt.ResolutionOfTime);
fprintf(fid, 'Experiment: %s\n\n', prt.Experiment);
fprintf(fid, 'BackgroundColor:     %3d %3d %3d\n', prt.BackgroundColor);
fprintf(fid, 'TextColor:           %3d %3d %3d\n\n', prt.TextColor);
fprintf(fid, 'TimeCourseColor:     %3d %3d %3d\n', prt.TimeCourseColor);
fprintf(fid, 'TimeCourseThick:         %d\n', prt.TimeCourseThick);
fprintf(fid, 'ReferenceFuncColor:  %3d %3d %3d\n', prt.ReferenceFuncColor);
fprintf(fid, 'ReferenceFuncThick:         %d\n\n', prt.ReferenceFuncThick);

if prt.ParametricWeights == 1
fprintf(fid, 'ParametricWeights:         %d\n\n', prt.ParametricWeights);
end
fprintf(fid, 'NrOfConditions:         %d\n\n', prt.NrOfConditions);

%LOOP THROUGH CONDITIONS
for c = 1:prt.NrOfConditions
    fprintf(fid, '%s\n', prt.Condition{c}.name);
    fprintf(fid, '%d\n', prt.Condition{c}.ntpts);
    if prt.Condition{c}.ntpts == 0
        %EMPTY CONDITIONS PRODUCE A WARNING BUT ARE NEVERTHELESS WRITTEN TO
        %FILE BECAUSE THEY MAY BE NEEDED FOR GLM
        fprintf(1, '\nWARNING! Condition ''%s'' in file ''%s'' is empty.', prt.Condition{c}.name, prt.name);
    end
    for t = 1:prt.Condition{c}.ntpts
        if prt.ParametricWeights == 0
            fprintf(fid, '%8d %8d\n', round(prt.Condition{c}.estart(t)), round(prt.Condition{c}.eend(t)));
        else
            fprintf(fid, '%8d %8d %3d\n', round(prt.Condition{c}.estart(t)), round(prt.Condition{c}.eend(t)), prt.Condition{c}.parametricWeight);
        end
    end
    fprintf(fid, 'Color:  %3d %3d %3d\n\n', prt.Condition{c}.color);
    
    
end
fclose( fid);
fprintf(1, '\nDONE\n');
