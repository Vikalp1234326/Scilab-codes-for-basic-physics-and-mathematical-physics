clc; clear; clf()
T = 1:1000; 
//Dulong Law
plot(T',1,"--*", 'linewidth', 2)
// Einsteins Law
R = 8.314; Te = 100; Td = 100;
y = ((Te./T).^2.*(exp(Te./T)))./((exp(Te./T)-1).^2)
plot(T,y,"--r", 'linewidth',3)
//Debye Petits Law
function p=integ(y)
    p=(y^4)*exp(y)/(exp(y)-1)^2
endfunction
t = T./Td;
    for i=1:length(t)
    g(i)=3*((T(i)/Td)^3)*(intg(0,(1/(T(i)/Td)),integ))
    end
plot(T, g,"-y", 'linewidth', 4)
legend("Dulong Petits Law", "Einstein Law","Debye Specific Heat Law")
title("Variation of Cv with Temperature",'fontsize',2); xlabel("Temperature T (K)",'fontsize',2); ylabel("Specific Heat",'fontsize',2)
plot(T,1.2,"-", 'linewidth', 0.5)
xgrid(1,1,3)

