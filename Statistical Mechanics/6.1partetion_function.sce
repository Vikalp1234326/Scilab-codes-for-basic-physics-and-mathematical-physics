clc;clear;clf();funcprot(0)
k=8.61D-5;E=[0.0 0.01]
T=[0:20:1500]
function y=f(T)
    y = (exp((0.0)./(k*T))+exp((-0.01)./(k*T)))^2
endfunction
function y1=ln(T)
    y1=log(f(T))
endfunction
function y2=h(T)
    y2=k*T*T*numderivative(ln,T)
endfunction
function y3=Cv(T)
    y3=numderivative(h,T)
endfunction
function y4=F(T)
    y4=-k*T*(ln(T))
endfunction
function y5=S(T)
    y5=-numderivative(F,T)
endfunction
function y6=p(e)
    y6=exp(-e./(k*T))./f(T)
endfunction
scf(0)
subplot(2,2,1)
plot(T,f)
xtitle("","temperature(K)","partition function")
xgrid(1,1,10)
subplot(2,2,2)
plot(T,h)
xtitle("","temperature(K)","internal energy (U)")
xgrid(1,1,10)
subplot(2,2,3)
plot(T,Cv)
xtitle("","temperature(K)","Specific heat")
xgrid(1,1,10)
subplot(2,2,4)
plot(T,S)
xtitle("","temperature(K)","Entropy")
xgrid(1,1,10)
scf(1)
En=[0 0.01 ]
col=["-r","-g","-b"]
for i=1:length(E)
plot(T,p(E(i)),col(i))
end
xtitle("","temperature (k)","probability of microstate")
legend(string(E)+"eV")
xgrid(1,1,10)
