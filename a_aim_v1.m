function a_aim_v1(rotator, dist_sensor, rot_sensor)

%% consts
MOTOR_POWER = 30;

%% scan surroundings and find target
[data_angle, data_dist] = a_scan_v1(rotator, dist_sensor, rot_sensor);
aim_angle = a_find_target_v1(data_angle, data_dist);

%% motor settings
rotator.power = MOTOR_POWER;
rotator.speedRegulation = 1;
rotator.limitMode = 'Tacho';
rotator.brakeMode = 'Brake';

%% rotate to target
start_angle = rot_sensor.value;
rotator.start();
while rot_sensor.value - start_angle < aim_angle
    pause(0.05);
end
rotator.stop();
