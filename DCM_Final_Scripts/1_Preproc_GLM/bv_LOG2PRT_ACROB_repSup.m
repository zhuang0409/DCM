function [prt] = bv_LOG2PRT_ACROB_repSup(subject, block)
%created: Angelika Lingnau 2012-08-03
%example call: 
%[prt] = bv_LOG2PRT_ACROB(1, 6)

Cfg.skipNVol=4; 
Cfg.TR = 2;
pathToLog = '/home/caterina/Documents/ACROB/logfiles/';
logName  = [pathToLog sprintf('ACROB_SUB%02d_RUN%02d.mat', subject, block)];
prt.name = [pathToLog sprintf('SUB%02d_%02d_ACROB_repSup.prt', subject, block)];

%----------------------------------------------------------------
%ASSIGN COLOR CODE
cmap =  [ 0     0   143; ...
          0    32   255; ...
          0   175   255; ...
         64   255   191; ...
        207   255    48; ...
        255   159     0; ...
        255    16     0; ...
        128     0     0];

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

%   repSup computation: 11 --> 11: TaskA_bothRep    2
%                       11 --> 12: TaskA_objectNew  3
%                       11 --> 13: TaskA_objectRep  4
%                       11 --> 14: TaskA_bothNew    1
%                       12 --> 11: TaskA_objectNew  3
%                       12 --> 12: TaskA_bothRep    2
%                       12 --> 13: TaskA_bothNew    1
%                       12 --> 14: TaskA_objectRep  4
%                       13 --> 11: TaskA_objectRep  4
%                       13 --> 12: TaskA_bothNew    1
%                       13 --> 13: TaskA_bothRep    2
%                       13 --> 14: TaskA_objectNew  3
%                       14 --> 11: TaskA_bothNew    1
%                       14 --> 12: TaskA_objectRep  4
%                       14 --> 13: TaskA_objectNew  3
%                       14 --> 14: TaskA_bothRep    2

%                       15 --> 15: TaskB_bothRep    6
%                       15 --> 16: TaskB_actionRep  8
%                       15 --> 17: TaskB_actionNew  7
%                       15 --> 18: TaskB_bothNew    5
%                       16 --> 15: TaskB_actionRep  8
%                       16 --> 16: TaskB_bothRep    6
%                       16 --> 17: TaskB_bothNew    5
%                       16 --> 18: TaskB_actionNew  7
%                       17 --> 15: TaskB_actionNew  7
%                       17 --> 16: TaskB_bothNew    5   
%                       17 --> 17: TaskB_bothRep    6
%                       17 --> 18: TaskB_actionRep  8
%                       18 --> 15: TaskB_bothNew    5
%                       18 --> 16: TaskB_actionNew  7
%                       18 --> 17: TaskB_actionRep  8
%                       18 --> 18: TaskB_bothRep    6


condNames=     {'TaskA_bothNew'; ...
                'TaskA_bothRep'; ...
                'TaskA_objectNew'; ...
                'TaskA_objectRep'; ...
                'TaskB_bothNew'; ...
                'TaskB_bothRep'; ...
                'TaskB_actionNew'; ...
                'TaskB_actionRep'};
        
load(logName);

nTrials = length(ExpInfo.TrialInfo);

dat{1}.tStart=[];
dat{2}.tStart=[];
dat{3}.tStart=[];
dat{4}.tStart=[];
dat{5}.tStart=[];
dat{6}.tStart=[];
dat{7}.tStart=[];
dat{8}.tStart=[];

for i = 1 : nTrials
    ID(i) = ExpInfo.TrialInfo(i).trial.code;
    t (i) = [ExpInfo.TrialInfo(i).tStart];
    
    if ID(i)==11
       if ID(i-1)==11
           dat{2}.tStart = [dat{2}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==12
           dat{3}.tStart = [dat{3}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==13
           dat{4}.tStart = [dat{4}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==14
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       end 
    elseif ID(i)==12
        if ID(i-1)==11
           dat{3}.tStart = [dat{3}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==12
           dat{2}.tStart = [dat{2}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==13
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==14
           dat{4}.tStart = [dat{4}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
        else
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       end 
    elseif ID(i)==13
        if ID(i-1)==11
           dat{4}.tStart = [dat{4}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==12
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==13
           dat{2}.tStart = [dat{2}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==14
           dat{3}.tStart = [dat{3}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
        end
    elseif ID(i)==14
        if ID(i-1)==11
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==12
           dat{4}.tStart = [dat{4}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==13
           dat{3}.tStart = [dat{3}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==14
           dat{2}.tStart = [dat{2}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{1}.tStart = [dat{1}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
        end   
           
    elseif ID(i)==15
        if ID(i-1)==15
           dat{6}.tStart = [dat{6}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==16
           dat{8}.tStart = [dat{8}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==17
           dat{7}.tStart = [dat{7}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==18
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       end
    elseif ID(i)==16
        if ID(i-1)==15
           dat{8}.tStart = [dat{8}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==16
           dat{6}.tStart = [dat{6}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==17
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==18
           dat{7}.tStart = [dat{7}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       end
    elseif ID(i)==17
        if ID(i-1)==15
           dat{7}.tStart = [dat{7}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==16
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==17
           dat{6}.tStart = [dat{6}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==18
           dat{8}.tStart = [dat{8}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
        end
    elseif ID(i)==18
        if ID(i-1)==15
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==16
           dat{7}.tStart = [dat{7}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==17
           dat{8}.tStart = [dat{8}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       elseif ID(i-1)==18
           dat{6}.tStart = [dat{6}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
       else
           dat{5}.tStart = [dat{5}.tStart;(t(i) - (Cfg.skipNVol * Cfg.TR))];
        end
    end
    
end

TaskA_bothNew = struct2cell(dat{1,1})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskA_bothNew.txt', subject, block), TaskA_bothNew, 'delimiter','\t','newline','pc','precision',4);

TaskA_bothRep = struct2cell(dat{1,2})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskA_bothRep.txt', subject, block), TaskA_bothRep, 'delimiter','\t','newline','pc','precision',4);

TaskA_ObjectNew = struct2cell(dat{1,3})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskA_ObjectNew.txt', subject, block), TaskA_ObjectNew, 'delimiter','\t','newline','pc','precision',4);

TaskA_ObjectRep = struct2cell(dat{1,4})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskA_ObjectRep.txt', subject, block), TaskA_ObjectRep, 'delimiter','\t','newline','pc','precision',4);

TaskB_bothNew = struct2cell(dat{1,5})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskB_bothNew.txt', subject, block), TaskB_bothNew, 'delimiter','\t','newline','pc','precision',4);

TaskB_bothRep = struct2cell(dat{1,6})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskB_bothRep.txt', subject, block), TaskB_bothRep, 'delimiter','\t','newline','pc','precision',4);

TaskB_ActionNew = struct2cell(dat{1,7})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskB_ActionNew.txt', subject, block), TaskB_ActionNew, 'delimiter','\t','newline','pc','precision',4);

TaskB_ActionRep = struct2cell(dat{1,8})
dlmwrite(sprintf('/media/caterina/FC_AON/ACROB/2_First_level_analysis_repSup/SUB%02d_%02d_TaskB_ActionRep.txt', subject, block), TaskB_ActionRep, 'delimiter','\t','newline','pc','precision',4);


% codeVec = [11:1:18];
%-------------------------------------------------------
prt.Experiment=sprintf('ACROB_repSup');
    
prt.NrOfConditions = length(condNames);  

%for i = 1 : length(codeVec)
%    if isempty(find(ID==codeVec(i)));
%        dat{i}.tStart = [];
%    else
%        dat{i}.tStart = (t(find(ID==codeVec(i))) - (Cfg.skipNVol * Cfg.TR)) * 1000;
%    end
%end
 
for i=1:prt.NrOfConditions
    prt.Condition{i}.name=char(condNames(i));
end

for c = 1:prt.NrOfConditions
    prt.Condition{c}.estart = round(dat{c}.tStart);
    prt.Condition{c}.eend = round(prt.Condition{c}.estart + (Cfg.durSec)); %REQUIRES sec resolution
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




