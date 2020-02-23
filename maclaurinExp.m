% Maclaurin Series for exp(0.1)

% This program illustrates the concept of Truncation Error

% In Mclaurin Series as the number of terms keeps on increasing the error
% keeps on decreasing.The error is introduced in the first place is due to 
% the number of terms we consider while doing our calculation in iteration 
% of steps (error truncation).

% Look at the error variable in the program by adjusting the value of n to
% make the concept more clear.

%Initialize Screen

clc;
clear all;
close all;

n=5;  % Number of terms
a=0.1; % Value of exponential raised to
currentTrem= 1.0; % Starting Value in the series if considered just one term

% Loop Iteration 
for i=1:n
    currentTerm = currentTerm * a/i;
    expVal(i+1) = expVal(i) + currentTerm;
end

trueVal = exp(0.1);  % True Value of the expression (could be found directly by calculator)
error = abs(trueVal-expVal);  % Find the error difference in iteration and true value


%% 

% Another type of error is the machine precision (error). Machine Precision
% could depend up # of bytes required to store a real number. The real
% number requires 4 bytes to store a real number i.e. 32 bytes and also a
% double type real number requires 8 bytes i.e. 64 bytes.

% A floating point number is represented using the representation of
%                0. x x x x * 10^n
% where n would represent the decimal part or the shifting factor.

% To check the machine precision use the following command in MATLAB

machinePrecision = eps; % Epsilon of the machine

% eps could be defined as the minimum distance that a floating point
% arithematic program like MATLAB can recognise between two numbers x and
% y. To illustrate this better try:

format long e
x=1; y=x+eps;
checkPrecision=y-x;

y=x+eps/2;
checkRecognise=y-x;

% You see that y-x in line 51 shows that MATLAB cannot recognise a
% difference less than eps
% Matlab uses mantissa of 52 having least count of e^-16
