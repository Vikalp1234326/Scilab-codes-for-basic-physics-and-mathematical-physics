clc; clear;
m=input("Enter number of rows : ");
n=input("Enter number of columns: ");
disp('Enter the Matrix')
for i=1:m
 for j=1:n
 A(i,j)=input("Enter Here : ");
 end
end
B=zeros(n,m);
for i=1:n
 for j=1:m
B(i,j)=A(j,i)
 end
end
disp('Entered matrix is')
disp(A)
disp('Transposed matrix is')
disp(B)