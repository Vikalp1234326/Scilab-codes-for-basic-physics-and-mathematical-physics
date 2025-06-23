clc; clear; clf()
T=[222.4;262.4;283.7;306.4;331.3;358.5;413.0;479.2;520.0;879.7;1079.7;1258]
C=[0.1278;0.1922;0.2271;0.2653;0.3082;0.3552;0.4463;0.5501;0.6089;0.8871;0.9034;0.9235]

plot(T,C,'or')
td=1000:10:2000
// for calculating the least deviation from the data
for j=1:length(td)
    for i=1:length(C)
        Cve(i)=(((td(j)/T(i))^2)*exp(td(j)/T(i)))/((exp(td(j)/T(i))-1)^2)
        SD(j)=(Cve(i)-C(i))^2
    end
end
[b,e]=min(SD)
T_d=td(e)              //Estimated Einstein Temperature
disp("Einstein Temperature is : "+string(T_d)+"K")

//Plotting curve at least deviation
Tn=[1:5:1500]
for i=1:length(Tn)
    Cv(i)=(((T_d/Tn(i))^2)*exp(T_d/Tn(i)))/((exp(T_d/Tn(i))-1)^2)
end
plot(Tn',Cv)
xtitle('Data Fitting of Einstein Theory','Temperature(K)','Cv/3R')
legend(['Data points','Curve with least deviation'],[4])
