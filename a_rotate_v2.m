function a_rotate_v2(rotator, rot_sensor, dist_sensor)

%% consts
MIN_DIST = 20;
EXTRA_ROTATE_ANGLE = 30;

%% rotator settings
rotator.power = -50;
rotator.start();

%% search for target
while dist_sensor.value > MIN_DIST
    pause(0.05);
end

%% rotate some more to be in middle of target
start_angle = rot_sensor.value;
while rot_sensor.value < start_angle + EXTRA_ROTATE_ANGLE
    pause(0.05);
end

%% stop
rotator.stop();
