clc; clear
m=input("enter number of rows : ");
n=input("enter number of columns : ");
disp('Enter the first Matrix')
for i=1:m
 for j=1:n
 A(i,j)=input('Enter Here:')
 end
end
disp('Enter the second Matrix')
for i=1:m
 for j=1:n
 B(i,j)=input('Enter Here : ')
 end
end

for i=1:m
 for j=1:n
 C(i,j)=A(i,j)+B(i,j);
 end
end

for i=1:m
 for j=1:n
 D(i,j)=A(i,j)-B(i,j);
 end
end

disp('The first matrix is')
disp(A)
disp('The Second matrix is')
disp(B)
disp('The sum of the two matrices is : ')
disp(C)
disp('The subtraction of the two matrices is : ')
disp(D)
