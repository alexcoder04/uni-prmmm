function b_schuss_v2()

b_b = EV3();
b_b.connect('usb');

%% consts and vars
MOTOR_RUN = 2;

button = b_b.sensor3;

motor1 = b_b.motorC;
motor2 = b_b.motorD;
motor3 = b_b.motorA;
motor4 = b_b.motorB;

%% prepare
motor1.power = -100;
motor2.power = -100;
motor3.power = -100;
motor4.power = -100;
motor1.brakeMode = 'Coast';   
motor2.brakeMode = 'Coast';
motor3.brakeMode = 'Coast';   
motor4.brakeMode = 'Coast';

%% wait for press
while button.value == 0
    pause(0.05);
end

%% start
motor1.start();
motor2.start();
motor3.start();
motor4.start();

%% run and stop
pause(MOTOR_RUN);

motor1.stop();
motor2.stop();
motor3.stop();
motor4.stop();

%% end program
b_b.disconnect();

