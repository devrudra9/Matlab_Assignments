% Generating convolution function
y1 = [2 -2 1 2 2];
subplot(3, 1, 1);
stem(y1);
y2 = [3 2 1 -2 1];
subplot(3, 1, 2);
stem(y2);
cv = conv(y1, y2);
subplot(3, 1, 3);
stem(cv);
title('Convolution Function');
xlabel('x');
ylabel('amplitude');
