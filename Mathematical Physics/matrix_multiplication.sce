clc; clear
m=input("Enter number of rows of the first Matrix: ");
n=input("Enter number of columns of the first Matrix: ");
p=input("Enter number of rows of the second Matrix: ");
q=input("Enter number of columns of the second Matrix: ");


if n==p
disp('Matrix Multiplication is possible')
else
 disp('Matrix multiplication is not possible')
 break;
end

disp('Enter the first Matrix')

for i=1:m
3
 for j=1:n
 A(i,j)=input('Enter Here: ')
 end
end


disp('Enter the second Matrix')
for i=1:p
 for j=1:q
 B(i,j)=input('Enter Here: ')
 end
end


C=zeros(m,q);
for i=1:m
    for j=1:q
        for k=1:n
            C(i,j)=C(i,j)+A(i,k)*B(k,j);
        end
    end
end


disp('The first matrix is')
disp(A)
disp('The Second matrix is')
disp(B)
disp('The product of the two matrices is')
disp(C)
