clc; clear; clf(); 
kb = 1.38e-23; n=6e23; pi = 3.14; 
v = 0:1:2000; T = 300:300:900;
M = input("Enter the molar mass of the gas (g/mol) : ")
m = M/(n*1000);
disp(['T   vmp   vav   vrms'])
for i = 1:length(T)
    a = m/(2*kb*T(i))
    for j = 1:length(v)
        f(i,j) = (4*pi)*((a/pi)^(1.5))*(v(j)^2)*exp(-a*(v(j)^2))
    end
    [p,q] = max(f(i,:));
    vmp = v(q);
    vav = sqrt(4/pi)*vmp; 
    vrms = sqrt(3/2)*vmp;
    disp([T(i) vmp vav vrms])
end

plot(v',f', "linewidth", 4)
title("Maxwell Boltzmann Distribution function")
xlabel('v(m/s)'); ylabel('f(v)'); legend(string(T))
