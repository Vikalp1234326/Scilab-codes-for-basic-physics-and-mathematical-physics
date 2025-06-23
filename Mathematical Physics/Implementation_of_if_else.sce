clc
clear
age=input("Enter your Age : ")
gen=input("Enter your Gender (M/F) : ")
h=input("Enter your height in feet : ")

if (age<0 | age==0) then
    disp("Please enter a valid age")
elseif (age>18) then
    disp(" VOTING : Congraturations !! You are eligible for voting.")
    if gen=="M" | gen=="m" then
        if age>21 | age==21 then
            disp("MARRIAGE : You are elegible for marriage!!")
        else
            disp("Sorry you are not eligible for maggiage")
        end
        if h==0 | h<0 then
            disp("Please enter a valid height")
        elseif h>6 then
            disp(" DEFENCE ACCEPTENCE : Congraturations you are eligible for the defence services!!")
        end
    
    elseif gen=="F" | gen=="f" then
         if age>18 | age==18  then
            disp("MARRIAGE : You are elegible for marriage!!")
         else
            disp("Sorry you are not eligible for maggiage")
         end
         if h==0 | h<0 then
            disp("Please enter a valid height")
         elseif h>5 then
             disp("DEFENCE ACCEPTENCE: Congraturations you are eligible for the defence services!!")
          end 
    end  
            
else 
    disp("You are not eligible for voting.")
    disp("You are not eligible for marriage.")
    disp("You are not eligible to be in military")
end
