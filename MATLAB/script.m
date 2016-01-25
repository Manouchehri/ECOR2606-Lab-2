% ECOR2606 - David Manouchehri - Part 2

range = [50 160];

f = @(d) overlap(100, 50, d);

% Part i
figure(1);
fplot(f, range);
xlabel('Distance (in mm)');
ylabel('Overlapping area (in mm)');
grid on;

% Part ii
f2 = @(d) f(d) - 2000;
answer = fzero(f2, range);
fprintf('Output of D: %f\n', answer);
