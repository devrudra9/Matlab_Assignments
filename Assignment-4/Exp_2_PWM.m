% Generation of Pulse Width Modulation 
% Both for Single tone and Double tone

fc = 1000; % Carrier Frequency
fs = 10000; % Sampling Frequency
f1 = 200;
f2 = 300;
t = 0:1/fs:((2/f1)-(1/fs));
x1 = 0.4*cos(2*pi*(f1+f2)*t) + 0.5;
x2 = 0.2*(cos(2*pi*f1*t)+cos(2*pi*f2*t)) + 0.5;

subplot(3, 2, 1);
plot(x1);
title("Original Single tone signal, f1 = 200, f2 = 300, fs = 10000");

subplot(3, 2, 3);
y1 = modulate(x1, fc, fs, 'pwm');
plot(y1);
axis([0 100 -0.2 1.2]);
title("PWM y1, One cycle of f1, fc = 1000, f1 = 200");

fx1 = abs(fft(y1,1024));
fx1 = [fx1(514:1024) ,fx1(1:513)];
f = (-511*fs/1024):(fs/1024):(512*fs/1024);
subplot(3, 2, 5);
plot(f, fx1);
title("Frequency description of PWM, single tone, fc = 1000");


subplot(3, 2, 2);
plot(x2);
title("Original double tone signal, f1 = 200, f2 = 300, fs = 10000");

subplot(3, 2, 4);
y2 = modulate(x2, fc, fs, 'pwm');
plot(y2);
axis([0 100 -0.2 1.2]);
title("PWM y2, One cycle of f1, fc = 1000, f1 = 200");

fx2 = abs(fft(y2,1024));
fx2 = [fx2(514:1024) ,fx2(1:513)];
subplot(3, 2, 6);
plot(f, fx2);
title("Frequency description of PWM, double tone, fc = 1000");
