clc; close all; clear;
addpath('pc_io');
addpath('pc_processing');
%% Step 1. Data Acquisition

pc_info.file_path   = "data"
pc_info.company     = "Velodyne";
pc_info.rotation    = "0deg";
pc_info.translation = "0mm";
pc_info.surface     = "paper";
pc_info.data_num    = "1";

pc = LidarPcRead(pc_info);
ShowPcData(pc, "pointCloud", "X", "Y", "Z");

%% Step 2. Roi Cropping
roi = [-1,1,  1,3.1,  -0.5,3];
pc_roi = LidarPcCropRoi(pc, roi);
ShowPcData(pc_roi, "ROI Croped pointCloud", "X", "Y", "Z");
hold on; plot3(0,0,0, 'whitesquare', 'linewidth', 5); grid on;      % Add Origin Point (0,0,0)

%% Step3. Estimating Feature Points (7 Vertexes on 3D Points)
close all;
