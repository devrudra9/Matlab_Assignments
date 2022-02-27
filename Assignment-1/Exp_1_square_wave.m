% Generation of square wave
f = 50;
D = 50;
fs = 1000;
A = 1;
t = 0:1/fs:0.1;
y = A*square(2*pi*f*t);
plot(t, y);
axis([0 0.1 -1.2 1.2]);
title('SQUARE WAVE PLOT');
xlabel('time in seconds');
ylabel('amplitude');
