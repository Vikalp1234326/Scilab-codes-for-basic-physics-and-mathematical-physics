//Probability Vs Magnetic moment
clc;clear;clf();
col=['r','b','g','y']
N=input("Enter the number of experiments to be performed: ")
for i=1:N
    n=input("Enter the number of particles: ")
    nom=2^n
    for j=0:1:n
        ns=factorial(n)/(factorial(j)*factorial(n-j))
        P(j+1)=ns/nom
        p(j+1)=j   //no. of particles
    end
    kr=n:-2:-n
    subplot(2,2,i)
    bar(kr,P,col(i))
    xlabel("Magnetic Moment",'fontsize',2)
    ylabel("Probability",'fontsize',2)
    title("Probability vs Magnetic moment",4)
    legend("Number of spin particle = "+string(n))
end
