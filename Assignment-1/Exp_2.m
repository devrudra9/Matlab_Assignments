% Generation of square wave for different duty cycles
A = input ('Enter amplitude: ');
f = input ('Enter frequency: ');
D = input ('Enter duty cycle of square wave: ');
fs = 1000;
t = 0:1/fs:0.1;
y = A*square(2*pi*f*t, D);
plot(t, y);
axis([0 0.1 -1.2 1.2]);
title('Square Wave for different duty cycles');
xlabel('time in seconds');
ylabel('amplitude');
