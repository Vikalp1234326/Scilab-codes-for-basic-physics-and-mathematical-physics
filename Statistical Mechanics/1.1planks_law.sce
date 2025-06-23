clc;clear;clf();
h=6.626e-34;kb=1.38e-23;c=3e8; //define constants
T=300:200:700; //Temperature range in Kelvin
Wu=0.1:0.005:30; //Wavelength in um
lambda=Wu.*10^-6 //Wavelength in m
for j=1:length(T)
for i=1:length(lambda)
up(j,i)=((8*3.14*h*c)/lambda(i)^5)/(exp((h*c)/(kb*T(j)*lambda(i)))-1); //Planck's Law in terms of wavelength
end
end
//Plot Planck's Law in terms of wavelength
subplot(1,2,1)
plot(Wu',up','linewidth',2);
legend('T = '+string(T)+' K');
xlabel('$\lambda(\mu m)$','fontsize',6);
ylabel('$u(\lambda)$','fontsize',6);
title("Planck Radiation Law in terms of wavelength",'fontsize',6);
//Planck's Radiation Law in terms of frequency
subplot(1,2,2)
f=0.1D12:0.05D12:150D12
col=['b' ,'g' ,'r']
for j=1:3
for i=1:length(f)
v(j,i)=((8*3.14*h*f(i)^3)/c^3)*(1/(exp((h*f(i)/(kb*T(j)))-1))) //Planck's Law in terms of frequency
end
[p,k]=max(up(j,:))
Wmax(j)=lambda(k)
U(j)=(0.005*10^-6)*sum(up(j,:)); //Calculate area under plancks curve
end
plot(f',v','linewidth',4);
legend('T = '+string(T)+' K');
xlabel('$\nu(\mu m^-1)$','fontsize',6);
ylabel('$u(\nu)$','fontsize',6);
title("Planck Radiation Law in terms of frequency",'fontsize',6);
scf()
//Wein's Law
subplot(1,2,1)
t=1./T;
plot(t,Wmax,'-o-','linewidth',4);
title("Weins Law",'fontsize',6);
xlabel("$\frac1T(K^{-1})$",'fontsize',6)
ylabel("$\lambda_{max}(\mu m)$",'fontsize',6);
[b,a]=reglin(t,Wmax');
disp("The value of Weins constant is: "+string(b)+' um.K')
//Plot Stefan's Law
subplot(1,2,2)
T4=T.^4;
E=U.*(c/4)
plot(T4',E,'-o-','linewidth',6)
title('Stefans Law','fontsize',6)
xlabel("$\text T^4(K^4)$",'fontsize',6);
ylabel("$E(W/m^2)$",'fontsize',6)
[sigma,d]=reglin(T4,E');
disp("The value of Stefan constant is: "+string(sigma)+'W.m-2.K-4')
