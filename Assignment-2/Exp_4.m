% Demodulation: DSB-SC & SSB 
% method = 'amdsb-sc' i.e. AM double sideband, suppressed carrier

fc = 100000; % Carrier Frequency in Hz 
fs = 1000000; % Sampling Frequency in Hz
f = 1000; % Tone Modulation
Am = 1; % Amplitude of Modulating Signal
t = 0:1/fs:((2/f)-(1/fs));

x1 = Am*cos(2*pi*f*t); % Modulating Signal
subplot(2, 2, 1);
plot(t, x1);
title('Modulating signal-time domain, Single Tone');
xlabel('time in seconds');
ylabel('Amplitude');

y1 = modulate(x1, fc, fs, 'amdsb-sc'); % Modulated Signal

d1 = demod(y1, fc, fs); % Demodulated Signal
subplot(2, 2, 2);
plot(t, y1);
title('Demodulated signal, Single Tone');
xlabel('time in seconds');
ylabel('Amplitude');

f1 = 750; % Tone Modulation Freq 1
f2 = 350; % Tone Modulation Freq 2
x2 = Am*cos(2*pi*f1*t) + Am*cos(2*pi*f2*t); % Modulating Signal
subplot(2, 2, 3);
plot(t, x2);
title('Modulating signal-time domain, Double Tone');
xlabel('time in seconds');
ylabel('Amplitude');

y2 = modulate(x2, fc, fs, 'amdsb-sc'); % Modulated Signal

d2 = demod(y2, fc, fs); % Demodulated Signal
subplot(2, 2, 4);
plot(t, d2);
title('Demodulated signal, Double Tone');
xlabel('time in seconds');
ylabel('Amplitude');
