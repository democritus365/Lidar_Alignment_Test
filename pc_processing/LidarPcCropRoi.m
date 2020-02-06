function pc_roi = LidarPcCropRoi(pc, roi)

indices = findPointsInROI(pc, roi);
pc_roi = select(pc, indices);

end