
# uni-prmmm

This is the final part of the "MATLAB meets Mindstorms" project at the
university. In a group, we built a robot using LEGO Mindstorms and programmed it
using MATLAB.

Our project is the closest we could get to a railgun: LEGO parts are accelerated
using a wheel which is powered by 4 motors via a 1:25 gear translation to
achieve astonishing speeds.

More facts:

 - Two Mindstorms bricks, communicating via a physical button which is pressed
   using a motor (yes, seriously)
 - The first brick ("master" brick) is the brain of the machine, the second one
   ("slave" brick) just powers the four acceleration motors (which therefore
   take up all the ports)
 - An ultrasonic distance sensor to find targets in specified distance
 - 360° rotation, gyro sensor to keep track of that
 - All files starting with an `a` are for the "master" brick, the one starting
   with a `b` is for the "slave" brick

