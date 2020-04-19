% Calculate e^(0.1) using multiple step of Taylor Series Expansion

% Author: Zain Rajani

%% True Value Computation

a=0.1;     % Value of e^
h=0.1;     % Step Size
N=a/h;     % No of Iteration

trueVal=exp(a);

%% Multi-step Computation

expVal=1;

for i=1:N
    expVal=expVal*(1+h);
end

%% Calculate true error

error = abs(trueVal-expVal)
