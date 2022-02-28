% Amplitude modulation: DSB-SC & SSB 
% For single tone modulation
% method = 'amdsb-sc' i.e. AM double sideband, suppressed carrier

fc = 100000; % Carrier Frequency in Hz 
fs = 1000000; % Sampling Frequency in Hz
f = 1000; % Tone Modulation
Am = 1; % Amplitude of Modulating Signal
Ac = 2; % Amplitude of Carrier Signal
t = 0:1/fs:((2/f)-(1/fs));

x1 = Am*cos(2*pi*f*t); % Modulating Signal
x2 = Am*cos(2*pi*f*t+90); % helbert transform of msg
c1 = Ac*cos(2*pi*fc*t); % Carrier Signal
c2 = Ac*sin(2*pi*fc*t);  
subplot(3, 1, 1);
plot(t, x1);
title('Modulating signal-time domain');
xlabel('time in seconds');
ylabel('Amplitude of modulating signal');

y = modulate(x, fc, fs, 'amdsb-sc'); % Modulated Signal
subplot(3, 1, 2);
plot(t, y);
title('DSB-SC signal, Single Tone');
xlabel('time in seconds');
ylabel('Amplitude of amp modulated signal');

%SSB(LSB) modulated signal
s1 = x1.*c1; 
s2 = x2.*c2;
s3 = s1+s2;
subplot(3, 1, 3);
plot(t,s3); 
title('SSB(LSB)-modulated signal, single tone')
xlabel ('time in seconds');
ylabel ('Amplitude');
