% Generating auto correlation function
y1 = [2 -2 1 2 2];
subplot(2, 1, 1);
stem(y1);
ac = xcorr(y1);
subplot(2, 1, 2);
stem(ac);
title('Auto Correlation Function');
xlabel('x');
ylabel('amplitude');
