function [data_angle, data_dist] = a_scan_v1(rotator, dist_sensor, rot_sensor)

%% consts
MOTOR_POWER = 30;

%% data
data_angle = [];
data_dist = [];

%% motor settings
rotator.power = MOTOR_POWER;
rotator.speedRegulation = 1;
rotator.limitMode = 'Tacho';
rotator.brakeMode = 'Brake';

%% run
rotator.start();
start_angle = rot_sensor.value;
while rot_sensor.value - start_angle < 360
    data_angle(end+1) = rot_sensor.value - start_angle;
    data_dist(end+1) = dist_sensor.value;
    pause(0.01);
end
rotator.stop();

%% plot data
data_angle_plot = data_angle.*(pi/180);
data_angle_plot = data_angle_plot*(-1)+(2*pi);
hold off;
polarplot(data_angle_plot, data_dist);
title("360° Scan der Umgebung");
