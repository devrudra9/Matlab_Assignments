% Generation of signum function
n = -10:1:10;
y1 = (n >= 0);
y2 = (n <= 0);
y = y1 - y2;
stem(n, y);
title('Signum Function');
xlabel('time in seconds');
ylabel('amplitude');
