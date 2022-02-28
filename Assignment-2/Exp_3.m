% Demodulation: DSB-C with tone input

fc = 100000; % Carrier Frequency in Hz 
fs = 1000000; % Sampling Frequency in Hz
f = 1000; % Tone Modulation
m = 0.5; % Modulation Index is under modulated
A = 1/m; % Amplitude of carrier signal
opt = -A; % From def & syntax of signal
Am = 1; % Amplitude of Modulating Signal
t = 0:1/fs:((2/f)-(1/fs));

x = Am*cos(2*pi*f*t); % Modulating Signal
subplot(4, 1, 1);
plot(t, x);
title('Modulating signal-time domain');
xlabel('time in seconds');
ylabel('Amplitude');

y1 = modulate(x, fc, fs, 'amdsb-tc', opt); % Modulated Signal

d1 = demod(y1, fc, fs); % Demodulated Signal
subplot(4, 1, 2);
plot(t, d1);
title('Demodulated Signal, 0.5');
xlabel('time in seconds');
ylabel('Amplitude');

m = 1.0; % Modulation Index is critical
A = 1/m; % Amplitude of carrier signal
opt = -A; % From def & syntax of signal

y2 = modulate(x, fc, fs, 'amdsb-tc', opt); % Modulated Signal

d2 = demod(y2, fc, fs); % Demodulated Signal
subplot(4, 1, 3);
plot(t, d2);
title('Demodulated Signal, 1.2');
xlabel('time in seconds');
ylabel('Amplitude');

m = 1.2; % Modulation Index is over modulated
A = 1/m; % Amplitude of carrier signal
opt = -A; % From def & syntax of signal

y3 = modulate(x, fc, fs, 'amdsb-tc', opt); % Modulated Signal

d3 = demod(y3, fc, fs); % Demodulated Signal
subplot(4, 1, 4);
plot(t, d3);
title('Demodulated Signal, 1.2');
xlabel('time in seconds');
ylabel('Amplitude');
