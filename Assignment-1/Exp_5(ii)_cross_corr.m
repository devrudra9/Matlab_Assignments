% Generating cross correlation function
y1 = [2 -2 1 2 2];
subplot(3, 1, 1);
stem(y1);
y2 = [3 2 1 -2 1];
subplot(3, 1, 2);
stem(y2);
cc = xcorr(y1, y2);
subplot(3, 1, 3);
stem(cc);
title('Cross Correlation Function');
xlabel('x');
ylabel('amplitude');
