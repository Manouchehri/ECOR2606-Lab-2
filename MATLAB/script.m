% ECOR2606 - David Manouchehri

f = @(d) overlap(100, 50, d);

figure(1);
fplot(f, [50 160]);
xlabel('x axis');
ylabel('y axis');
grud on;