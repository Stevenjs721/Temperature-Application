
ti = 70;
tb = 170;
%Solve for temp after 10s
[time,temp] = ode45(@(time,temp) (tb-temp)/10, [0 10], ti);
n = length(temp);
fprintf("The temp after 10s is %.1f F.\n",temp(n))
%Solve for temp after 20s
[time,temp] = ode45(@(time,temp) (tb-temp)/10, [0 20], ti);
n = length(temp);
fprintf("The temp after 20s is %.1f F.\n",temp(n))
%Solve for temp after 40s
[time,temp] = ode45(@(time,temp) (tb-temp)/10, [0 40], ti);
n = length(temp);
fprintf("The temp after 40s is %.1f F.\n",temp(n))
%Logical comparison
near160 = temp < 160.1 & temp > 159; 
time160 = time(near160);
fprintf("It will take %.2f seconds for the temp to reach 160.\n", time160)
%Plot function 
plot(time,temp)
xlabel("Time")
ylabel("Temperature(F)")
xlim([0 40])
ylim([0 180])

