clc; clear; 
clf();
e = 3.795; hb = 1973; mu = 0.511D6;
E = -13.6; 
a_a = [3,5,7]
a_val = input("Enter the value of a from [3,5,7] here :  ")
function p = v(x)
    p = (-(e.^2)/x)*exp(-x./a_val)
endfunction
a1 = input("Enter the size of the interval : ");
n=input("enter the number of steps ")
//calculating the step size
h=a1/n;
x = [0:h:n*h]
//designing matrix of order (n-1,n-1)
A = zeros(n-1,n-1);
B = zeros(n+1,n+1)

for i = 1:n-1
    A(i,i) = 2*(1+(mu*h*h*v(x(i+1)))/(hb*hb))
    if (i~=n-1)
        A(i,i+1) = -1;
        A(i+1,i) = -1;
    end
end
B(1,1) = 1;
B(n+1,n+1) = 1;
for i=2:n
    for j=2:n
        B(i,j) = A(i-1,j-1)
    end
end

[e_vec,e_val] = spec(B);
disp("The Ground state energy if a = " +string(a_val)+"is : ")

disp("E value is : "+string(hb*hb/(2*mu*h*h)*e_val(1,1)) )
subplot(1,2,1)
plot(x',(e_vec(:,1).*e_vec(:,1)),'-sg')
xgrid(1,1,3)
legend(['Probability for Ground State'])
xtitle('Plot for the probability Density','X','Y')
subplot(1,2,2)
plot(x',e_vec(:,1),'-^r')
xgrid(1,1,3)
legend(['Wave function for Ground state'])
xtitle('Plot for the Wave function ','X','Y')
