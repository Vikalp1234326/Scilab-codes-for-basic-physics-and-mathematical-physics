clc
clear
//clf()
l=list()
for i=1:3
    a=input("Enter the standard deviatoion : ")
    l(i)=a
    function [y]=f(x)
        y=(1/(a*sqrt(2*%pi)))*exp(-(1/2)*(x/a)^2)
    endfunction
    
    x=[-3:0.1:3]

    z=f(x)
    v=["r","g","b"]
    plot(x,z,v(i)) 
    xgrid(1,1) 
    xtitle("Gussian Plot for various Values of Standard Deviation","X-axis", "Y-axis")
end

legends(["1.2","1.4","1.8"],[-1,2,3],opt=3)






