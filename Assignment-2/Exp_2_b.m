% Amplitude modulation: DSB-SC & SSB 
% For double tone modulation
% method = 'amdsb-sc' i.e. AM double sideband, suppressed carrier

fc = 100000; % Carrier Frequency in Hz 
fs = 1000000; % Sampling Frequency in Hz
f1 = 750; % Tone Modulation Freq 1
f2 = 350; % Tone Modulation Freq 2
Am = 1; % Amplitude of Modulating Signal
Ac = 2; % Amplitude of Carrier Signal
t = 0:1/fs:((2/f)-(1/fs));

x1 = Am*cos(2*pi*f1*t) + Am*cos(2*pi*f2*t); % Message Signal
x2 = Am*cos(2*pi*f1*t+90) + Am*cos(2*pi*f2*t+90); %helbert transform of msg
c1 = Ac*cos(2*pi*fc*t); % Carrier Signal
c2 = Ac*sin(2*pi*fc*t);  
subplot(3, 1, 1);
plot(t, x1);
title('Modulating signal-time domain');
xlabel('time in seconds');
ylabel('Amplitude');

y = modulate(x, fc, fs, 'amdsb-sc'); % Modulated DSB-SC Signal
subplot(3, 1, 2);
plot(t, y);
title('DSB-SC signal, Double Tone');
xlabel('time in seconds');
ylabel('Amplitude');

%SSB modulated signal
s1 = x1.*c1; 
s2 = x2.*c2;
sl = s1+s2;

subplot(3, 1, 3);
plot(t,sl); 
title('SSB modulated signal, Double Tone');
xlabel ('time in seconds');
ylabel ('Amplitude');
