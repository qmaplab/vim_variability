function [logfile,proc]=vim_version_check
% function (logfile,proc)=vim_version_check
% Run a short version check for compatability. Different versions of MATLAB
% and SPM could cause errors/bugs
%_______________________________________________________________________
% Version History:
% Version 1.0, May 2020
%--------------------------------------------------------------------------
% C.Lambert - Wellcome Centre for Human Neuroimaging
%--------------------------------------------------------------------------
clc;
logfile=char(strcat('Starting run_vim_analysis:',datestr(now)));disp(logfile(end,:));
opt=vim_analysis_defaults;
logfile=char(logfile,'Running compatability check');disp(logfile(end,:));
UD=char(strcat('Version of run_vim_analysis:',32,opt.vimversion));logfile=char(logfile,UD);disp(UD);
UD=char(strcat('Version of run_vim_analysis used for published analysis: v1.2'));logfile=char(logfile,UD);disp(UD);
proc=true;
if isempty(which('spm'))
    logfile=char(logfile,'ERROR: SPM not in MATLAB path');
    disp(logfile(end,:));
    proc=false;
    return
end

UD=char(strcat('Version of SPM present:',spm('version')));logfile=char(logfile,UD);disp(UD);
UD=char(strcat('Version of SPM used for published analysis: SPM12 (7771)'));logfile=char(logfile,UD);disp(UD);
a=strsplit(spm('version'));no=str2num(a{1}(4:end));

if no<12
    logfile=char(logfile,'ERROR: SPM version not compatable with analysis. Please download SPM12 (or later)');
    disp(logfile(end,:));proc = false;
    return
end

if no>12
   disp('Warning: SPM version later than SPM12 - Attempting to proceed');
   disp(logfile(end,:));
end

UD=char(strcat('Version of MATLAB present:',version));logfile=char(logfile,UD);disp(UD);
UD=char(strcat('Version of MATLAB used for published analysis: 9.7.0.1190202 (R2019b)'));logfile=char(logfile,UD);disp(UD);
UD=char(strcat('Please note version differences may cause differences/errors, attempting to continue'));logfile=char(logfile,UD);disp(UD);
end