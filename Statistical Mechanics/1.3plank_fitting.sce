clc;clear;clf()
pi=%pi; h=6.626D-34; c=3*10^8; kb=1.38D-23;
x=[600,1200,1700,2300,2800,3400].*1D-9
y=[1.67,4.37,3.04,1.77,1.04,0.63].*1D11
function up=plancks(lambda)
    up=(2*h*c*c)/(lambda^5)/(exp(h*c/lambda/kb/t)-1)
endfunction

for t=2000:3000
    yc=feval(x,plancks)
    D($+1)=sqrt(sum((yc - y).^2))
end
[val,pos]=min(D)
t=2000+pos
x1=linspace(5D-7,4D-6,1000)
plot(x1,feval(x1,plancks),'m',"linewidth",2)
plot(x,y,'o')
xgrid(1,1,9)
legend("Temp= "+string(t)+"K","Data Points")
xtitle("Least Square Fitting","Wavelength","Flux Density")
