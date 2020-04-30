% Author: Zain Rajani

% Maclaurin Series for ecp(0.1)

% Screen Initialise

clear all;
close all;
clc;

% The code understand Taylor Series and Truncation Error.

n=5;
a=0.01;

vec=[1:n];
terms= a.^vec ./ cumprod(vec); %cumulative product in built function
expVal=1+cumsum(terms);

trueVal=exp(0.01);
error=abs(trueVal-expVal);
