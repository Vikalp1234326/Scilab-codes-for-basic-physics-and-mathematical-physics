clc
clear
a=0
p=1
s=0
for i=1:2:100
    p=p+1
    a=a+(1/i)*((-1)^p)
    
end

disp(4*a)
