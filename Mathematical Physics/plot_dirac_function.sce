clc
clear
sig1=[1 ,0.1, 0.01,0.001]
for k=1:4
    sig=sig1(k)
    x=[-4:0.001:4]
    for j=1:length(x)
        F(j)=1/sqrt(2*%pi*sig^2)*exp(-((x(j)-2)^2)/(2*sig^2))*(x(j)+3)
    end
    if k==1
        F1=F
    elseif k==2
        F2=F
    elseif k==3
        F3=F
    else
        F4 = F
    end

    end
X=x;


subplot(221)
plot(X,F1,'.-g')
xtitle('F(x) Vs x for sigma=1')


subplot(222)
plot(X,F2,'.-r')
xtitle('F(x) Vs x for sigma= 0.1')


subplot(223)
plot(X,F3,'.-b')
xtitle('F(x) Vs x for sigma 0.01')

subplot(224)
plot(X,F4,'.-b')
xtitle('F(x) Vs x for sigma 0.001')
