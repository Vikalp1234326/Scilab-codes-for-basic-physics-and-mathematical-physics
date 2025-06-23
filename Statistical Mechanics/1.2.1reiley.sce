clc;clear;clf();
h=6.626e-34;kb=1.38e-23;c=3e8; //define constants
T=3000:1000:5000; //Temperature range in Kelvin
Wu=1:10^-5:7; //Wavelength in um
lambda=Wu.*10^-6 //Wavelength in m
To=5000 //Comparison Temperature
for j=1:length(T)
for i=1:length(lambda)
ur(j,i)=(8*3.14*kb*T(j))/(lambda(i)^4); //Rayleigh Jeans Law in terms of wavelength
end
end
subplot(1,2,1)
plot(Wu',ur','linewidth',4);
xgrid(1,1,10)
legend('T = '+string(T)+' K');
xlabel('$\lambda(\mu m)$','fontsize',5);
ylabel('$u(\lambda)$','fontsize',5);
title("Rayleigh Jeans Law in terms of wavelength",'fontsize',5);
//Rayleigh Jeans law in terms of frequency
subplot(1,2,2)
f=0.1D12:0.05D12:150D12
for j=1:length(T)
for i=1:length(f)
v(j,i)=(8*3.14*kb*T(j)*f(i)^2)/(c^3); //Rayleigh Jeans Law in terms of frequency
end
end
plot(f',v','linewidth',4);
xgrid(1,1,10)
legend('T = '+string(T)+' K');
xlabel('$\nu(\mu m^-1)$','fontsize',5);
ylabel('$u(\nu)$','fontsize',5);
title("Rayleigh Jeans Law in terms of frequency",'fontsize',5);
//Comparison of Planck's Law, Rayleigh Jean's Law and Wein's Law at T=5000K
scf()
W=0.1:0.005:30; //Wavelength in um
l=W.*10^-6 //Wavelength in m
To=5000 //Comparison Temperature
for j=1:length(T)
for i=1:length(l)
up(j,i)=((8*3.14*h*c)/l(i)^5)/(exp((h*c)/(kb*T(j)*l(i)))-1)
urr(j,i)=(8*3.14*kb*T(j))/(l(i)^4); //Rayleigh Jeans Law in terms of wavelength
uw(j,i)=((8*3.14*h*c)/(l(i)^5))*(exp(-(h*c)/(kb*T(j)*l(i))))
end
if T(j)==To
q=j
end
end
xgrid(1,1,10)
plot(W',[up(q,:)' urr(q,:)' uw(q,:)'],'linewidth',5)
legend('Planks law','Rayleigh-Jeans Law','Weins Law')
title('Temperature: '+string(T(q))+' K','fontsize',5)
