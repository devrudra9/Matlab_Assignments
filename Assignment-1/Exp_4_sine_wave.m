% Take required Inputs
A = input ('Enter amplitude: ');
f = input ('Enter frequency: ');
t = 0:0.01:1;

% Generate Sine wave
y = A*sin(2*pi*f*t);
plot(t, y);
title('SINE WAVE PLOT');
xlabel('time');
ylabel('amplitude');
