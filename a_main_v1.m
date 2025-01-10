
%% setup
b_a = EV3();
b_a.connect('usb');

%% aim
a_aim_v1(b_a.motorC, b_a.sensor4, b_a.sensor3);

%% shoot
a_sendcomm_v3(b_a.motorD);
pause(7);
a_move_v1(b_a.motorB);

%% clean up
b_a.disconnect();
