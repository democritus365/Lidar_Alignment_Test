function pc = LidarPcRead(pc_info)

if pc_info.company == "SL_3"
    pc = pcread(pc_info.file_path+"\"+pc_info.company+"\"+pc_info.rotation+"\"+pc_info.translation+"\"+pc_info.surface+"\"+"cube_"+pc_info.data_num+".pcd");
    pc.Color = uint8(ones(pc.Count,3)) * 255;
elseif pc_info.company == "Velodyne"
    pc_csv = csvread(pc_info.file_path+"\"+pc_info.company+"\"+pc_info.rotation+"\"+pc_info.translation+"\"+pc_info.surface+"\"+"cube_"+pc_info.data_num+".csv", 1, 0);
    pc = pointCloud(pc_csv(:,1:3));
    pc.Color = uint8(ones(pc.Count,3)) * 255;
else
    disp("(error) Wrong file path!!!");
end

end