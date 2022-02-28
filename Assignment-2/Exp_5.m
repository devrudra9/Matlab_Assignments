% Simulating envelop detection

Ac = 1; % carrier amplitude
fc = 1.0; % carrier frequency
Am = 1; % message signal amplitude
fm = 0.05; % message signal frequency
fs = 100; % sampling rate/frequency

ka=1; % modulation coefficient

t = (0:0.1:100); % time range
c = Ac*cos(2*pi*fc*t); % carrier signal wave
m = Am*cos(2*pi*fm*t); % message signal
y = c.*(1+ka*m); %Amplitude Modulated wave, according to the standard definition


plot(y, 'b');
hold on;
envelope = abs(hilbert(AM)); % hilbert transform to calculate the envelope of the signal
plot(envelope, 'r');
hold off;
