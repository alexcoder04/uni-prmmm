function a_move_v1(mover)

mover.power = 100;
%mover.limitMode = 'Tacho';
%mover.limitValue = 360;

mover.start();

pause(1);

mover.stop();
