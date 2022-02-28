fc = 10000; % Carrier Frequency
fs = 100000; % Sampling Frequency
f1 = 200;
f2 = 500;
t = 0:1/fs:((2/f1)-(1/fs)); % Gives two cycles of the modulating signal
x1 = cos(2*pi*f1*t); % Single tone message 1
x2 = cos(2*pi*f1*t) + cos(2*pi*f2*t); % Combined tone message 2
kp = pi/max(max(x1)); % Frequency deviation = fc
kp = kp*(f1/fc); % makes frequency deviation = f1
opt = 1/6;

% MODULATION
y1 = modulate(x1, fc, fs, 'pm', opt);
y2 = modulate(x2, fc, fs, 'pm', opt);

subplot(2, 3, 1);
plot(t, x1);
title('Single tone message 1');
xlabel('time');
ylabel('Amplitude');

subplot(2, 3, 2);
plot(t, y1);
title('Time domain PM single tone opt=1/6*kp');
xlabel('time');
ylabel('Amplitude');
x1_recov = demod(y1, fc, fs, 'pm', opt);

subplot(2, 3, 3);
plot(t, x1_recov);
title('Demodulated single tone opt=1/6*kp');
xlabel('time');
ylabel('Amplitude');

subplot(2, 3, 4);
plot(t, x2);
title('Double tone message 2');
xlabel('time');
ylabel('Amplitude');

subplot(2, 3, 5);
plot(t, y2);
title('Time domain PM double tone opt=1/6*kp');
xlabel('time');
ylabel('Amplitude');

x2_recov = demod(y2, fc, fs, 'pm', opt);

subplot(2, 3, 6);
plot(t, x2_recov);
title('Demodulated double tone opt=1/6*kp');
xlabel('time');
ylabel('Amplitude');
