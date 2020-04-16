% Calculate e^(0.1) using multiple step of Taylor Series Expansion

%% True Value Computation

a=0.1;
h=0.1;
N=a/h;

trueVal=exp(a);

%% Multi-step Computation

expVal=1;

for i=1:N
    expVal=expVal*(1+h);
end

%% Calculate true error

error = abs(trueVal-expVal)