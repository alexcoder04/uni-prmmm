function a_sendcomm_v3(controller)

%% setup
controller.brakeMode = 'Brake';
controller.limitMode = 'Tacho';

%% vor
controller.power = 50;
controller.limitValue = 100;

controller.start();
pause(0.5);
controller.stop();

%% zurück
controller.power = -50;
controller.limitValue = 95;

controller.start();
pause(0.5);
controller.stop();
