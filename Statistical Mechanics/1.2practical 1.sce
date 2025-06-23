clc; clf(); clear; 
h = 6.626e-34; kb = 1.38e-23; c = 3e8;
T = 500:100:1000; To = 1000; 
Wu = 0.1:0.005:30; W = Wu*10^-6;
A = (8*3.14*h*c);
for i = 1:length(T)
    for j = 1:length(W)
        up(i,j) = ((8*3.14*h*c)/W(j)^5)/(exp((h*c)/(kb*T(i)*W(j)))-1)
        ur(i,j) = 8*3.14*kb*T(i)/(W(j)^4)
        uw(i,j) = (A/(W(j)^5))*(exp((-h*c)/(kb*T(i)*W(j))));
    end
    if T(i) == To
        q=i;
    end
    
    [p,k] = max(up(i,:));
    Wmax(i) = Wu(k)
    
    U(i) = (0.005*10^-6)*sum(up(i,:))
    
end

subplot(2,2,1)
plot(Wu',up','linewidth',5); legend('T = '+string(T)+' K');
xlabel('$\lambda(\mu m)$','fontsize',6);
ylabel('$u(\lambda)$','fontsize',6);

subplot(2,2,2)
plot(Wu',[up(q,:)' ur(q,:)' uw(q,:)'], 'linewidth', 5)
replot([0,0,20,200])
legend('planks law', 'Rayleigh Jeans law','Wien displacement law')
xlabel('$\lambda(\mu m)$','fontsize',6);
ylabel('$u(\lambda)$','fontsize',6);


subplot(2,2,3)
T1 = 1./T
plot(T1,Wmax',"-o-r","linwidth",5);
xlabel('$\frac1T(K^{-1})$')
ylabel('$\lambda_{max} (\mu m)$')
[b,a] = reglin(T1,Wmax');
disp("The value of Wiens Constant is: "+string(b)+'umK')

subplot(2,2,4)
T4 = T.^4; E = U.*(c/4);
plot(T4',E,"-o-b")

