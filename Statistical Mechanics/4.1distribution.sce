clc; clear; clf(); 
e = 1.6e-19; kb = 1.38e-23; u = 0;
E = -0.5:0.001:0.5; 
T = 100:200:1100; 
To = 700
dis = ["Bose Einstein", "Maxwell Boltzmann", "Fermi Dirac"];
a = -1; 
for i = 1:3
    for j = 1:length(T)
        for k = 1:length(E)
            f(j,k) = 1/(exp(((E(k))*e)/(kb*T(j)))  + a)
        end
        if T(j)==To 
            q = j;
        end
    end
    a = a+1
    c(i,:) = f(q,:)
    subplot(2,2,i)
    plot(E',f', 'linewidth', 4)
    title(string(dis(i)))
    legend('T = '+string(T))
end
subplot(2,2,4)
plot(E',c')
legend(dis)
