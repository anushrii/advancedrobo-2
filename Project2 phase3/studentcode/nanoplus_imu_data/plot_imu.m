%% Select which mat file to plot
load('imu_static.mat')

%% Plot
imu_color = [lines(3); lines(3)];
imu_seq = [1:2:6 2:2:6];
imu_name = {'xddot [m/s^2]', 'yddot [m/s^2]', 'zddot [m/s^2]', ...
    'rollddot [rad/s]', 'pitchddot [rad/s]', 'yawddot [rad/s]'};
for i = 1:6
    i_plot = imu_seq(i);
    subplot(3,2, i_plot);
    plot(imu_hist(i,:), 'Color', imu_color(i,:), 'LineWidth' ,2);
    grid on
    xlabel('time [s]');
    ylabel(imu_name{i});
end

mean_ =  mean(imu_hist,2)
std_ =  std(imu_hist,0,2)

%     0.0159
%     0.0120
%     0.0116
%     0.0020
%     0.0022
%     0.0021