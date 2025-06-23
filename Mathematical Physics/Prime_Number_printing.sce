clear
clc 

l = input("How many prime numbers you want to print : ")
s = 0 
for i = 2:1000000
    flag = 0 
    for j = 2:(i-1)
        if modulo(i,j) == 0
            flag = 1
            break
         else
             continue
         end
    end
    if flag==1 then 
        continue 
    else 
        disp(i)
        s = s+1
    end
    if s == l 
        break
    else
        continue
    end
end
