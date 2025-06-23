//probability for coin tossing experiment
clc;clear;clf();
N=input("Enter the no. of separate experiments: ")
for i=1:N
    n=input("Enter the number of coins: ")
    nom=2^n //Total no. of microstates
    disp("n(h)  P(h)")
    for j=0:1:n
        //No. of microstates for a particular macrostate
        ns=factorial(n)/(factorial(j)*factorial(n-j))
        P(j+1)=ns/nom; //Probability
        h(j+1)=j //All possible values of heads
        disp([h(j+1)  P(j+1)])
    end
    subplot(2,3,i)
    plot(h,P,"-o-","linewidth",2)
    title("Number of coins "+string(n),'fontsize',6)
    xlabel("Number of heads")
    ylabel("Probability")
end
