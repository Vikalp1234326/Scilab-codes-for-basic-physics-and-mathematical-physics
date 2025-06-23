
clc
clf()
clear
function func=f(x,y)
    func=-y
endfunction
y(1)=1
h=0.1
x=0:h:5
w=length(x)
disp(w)
for i=1:w-1
    y(i+1) = y(i) + h* (f(x(i),y(i)))
end
disp(y)
//disp(y(2))
plot(x,y,'o-')
plot(x,exp(-x),'r')
xgrid(1,1)
legend('Solution from Eulers formula','Analytical Solution')
