close all; clear; clc;

% set the RoodDir according to your own environment
RootDir = pwd;

%load GT
GT = imread(fullfile(RootDir,'Ground Truth.png'));
%load FM
FM = imread(fullfile(RootDir,'Foreground Map.png'));

%compute Emeasure score
score = Emeasure(FM,GT);

fprintf('The similarity score between FM and GT is:%.3f\n',score);
