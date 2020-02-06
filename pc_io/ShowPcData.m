function ShowPcData(pc, title, x_label, y_label, z_label)

figure('Name', title); pcshow(pc)
xlabel(x_label); ylabel(y_label); zlabel(z_label);

end