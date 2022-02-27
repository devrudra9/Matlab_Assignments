% Generation of unit step function
n = -8:1:8;
y = (n >= 0);
stem(n, y);
ylabel('Amplitude');
xlabel('unit step');
axis([-8 8 0 1]);
title('Unit Step Function');
xlabel('time in seconds');
ylabel('amplitude');
