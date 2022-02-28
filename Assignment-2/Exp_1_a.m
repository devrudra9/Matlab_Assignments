% Amplitude modulation: DSB-C with tone input
% For modulation index m = 0.5 i.e. under modulation
% method = 'amdsb-tc' i.e. AM double sideband, transmitted carrier

fc = 100000; % Carrier Frequency in Hz 
fs = 1000000; % Sampling Frequency in Hz
f = 1000; % Tone Modulation
m = 0.5; % Modulation Index
A = 1/m; % Amplitude of carrier signal
opt = -A; % From def & syntax of signal
Am = 1; % Amplitude of Modulating Signal
t = 0:1/fs:((2/f)-(1/fs));

x = Am*cos(2*pi*f*t); % Modulating Signal
subplot(2, 1, 1);
plot(t, x);
title('Modulating signal-time domain');
xlabel('time in seconds');
ylabel('Amplitude of modulating signal')

y = modulate(x, fc, fs, 'amdsb-tc', opt); % Modulated Signal
subplot(2, 1, 2);
plot(t, y);
title('DSB-C signal-time domain, 0.5');
xlabel('time in seconds');
ylabel('Amplitude of amp modulated signal')
