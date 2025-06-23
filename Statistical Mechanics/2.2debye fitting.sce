clc;clear;clf()
T=[222.4;262.4;283.7;306.4;331.3;358.5;413.0;479.2;520.0;879.7;1079.7;1258]
C=[0.1278;0.1922;0.2271;0.2653;0.3082;0.3552;0.4463;0.5501;0.6089;0.8871;0.9034;0.9235]

plot(T,C,'om')
k=1.38e-23
N=6.02e23
td=1000:10:2000
//To find curve with least deviation from given data
for j=1:length(td)
    for i=1:length(C)
        I=integrate('((y^4)*exp(y))/((exp(y)-1)^2)','y',0,(td(j)/T(i)))
        Cvd(i)=3*((T(i)/td(j))^3)*I // Debye Model
        SD(j)=(Cvd(i)-C(i))^2
    end
end
[b,e]=min(SD)
T_d=td(e)                             //Estimated Debye Temperature
disp("Debye Temperature is : "+string(T_d)+"K")

//Plotting curve at least deviation
Tn=[100:10:1200]
for i=1:length(Tn)
    I=integrate('((y^4)*exp(y))/((exp(y)-1)^2)','y',0,(T_d/Tn(i)))
    Cv(i)=3*((Tn(i)/T_d)^3)*I // Debye Model
end
plot(Tn',Cv)
xtitle('Data Fitting of Debye Model','Temperature(K)','Cv/3R')
legend(['Data points','Curve with least deviation'])
