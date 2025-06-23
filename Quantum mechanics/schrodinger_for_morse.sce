clc; clear; 
clf();
e = 3.795; hb = 1973; mu = 940D6;
E = -13.6; 
D = 0.755501;
xo = 0.131349;
alpha = 1.44;
function p = v(x)
    p = D.*(exp((-2).*(alpha).*((x-xo)/x)) - exp((-alpha).*((x-xo)/x)))
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
cl = ['-^r','-*b','-oc','-sy','-+g']
disp("The eigen values are : ")
for i = 1:100
    disp("E "+string(i)+" is : "+string(hb*hb/(2*mu*h*h)*e_val(i,i)) )
    q(:,i) = e_vec(:,i); //these are the wave fucntions 
    // now we will calculate the probability density
    q2(:,i) = q(:,i).*q(:,i);
    subplot(1,2,1)
    plot(x',q(:,i),cl(i));
    legend(['n = 1','n = 2', 'n = 3','n = 4','n = 5'])
     xtitle('Plot for the Wave Function Solution','X','Y')
     xgrid(1,1,3)
    //For calculating the inner product we will take the inner      product
    subplot(1,2,2)
    plot(x',q2(:,i),cl(i));
    legend(['n = 1','n = 2', 'n = 3','n = 4','n = 5'])
    xtitle('Plot for the probability Density','X','Y')
    xgrid(1,1,3)
end
