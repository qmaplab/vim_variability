function options=vim_analysis_defaults
% function options=vim_analysis_defaults
% Set local defaults/settings

% Add your own path to the VIM github folder download e.g.
% /mycomputer/myhome/vim-master

options.pth     =[];

%% Do not change:
options.vimversion='v1.5';

options.affine  =[-1.2500         0         0   91.2500
         0    1.2500         0 -127.2500
         0         0    1.2500  -73.2500
         0         0         0    1.0000];%Group average affine matrix
     

options.col=[0.5529    0.8275    0.7804
    1.0000    1.0000    0.7020
    0.7451    0.7294    0.8549
    0.9843    0.5020    0.4471
    0.5020    0.6941    0.8275
    0.9922    0.7059    0.3843
    0.7020    0.8706    0.4118
    0.9882    0.8039    0.8980
    0.8510    0.8510    0.8510
    0.7373    0.5020    0.7412];

options.remove=zeros(100,1);
options.remove(20)=1;
options.remove(28)=1;
end
