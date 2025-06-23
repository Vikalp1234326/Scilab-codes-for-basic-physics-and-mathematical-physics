clc; clear;
m=input("Enter number of rows : ");
n=input("Enter number of columns: ");
disp('Enter the Matrix')
for i=1:m
 for j=1:n
 A(i,j)=input("Enter Here : ")
 end
end
disp("The matrix is : ",A)
disp("The inverse of the matrix is : ", inv(A))
