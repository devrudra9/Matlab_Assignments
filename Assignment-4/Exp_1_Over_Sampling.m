% Over Sampling (fs > 2*fm)

fm = 200;
fs = 1000;
t = 0:1/fs:((10/fm)-(1/fs));
x = sin(2*pi*fm*t);
fx = fft(x, 64);
xr = ifft(fx, 64);
f = (-31*fs/64):(fs/64):(32*fs/64);
fx = [fx(34:64), fx(1:33)];

subplot(3, 1, 1);
stem(x);
title("Sampled signal, fm = 200, fs = 1000");

subplot(3, 1, 2);
stem(f,abs(fx)); 
title("Frequency spectrum , fm = 200, fs = 1000");

subplot(3, 1, 3);
stem(xr);
title("Recovered signal, fm = 200, fs = 1000");
