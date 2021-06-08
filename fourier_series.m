clear;

% independent variable x, defined over the range -2 to 2 (let L = 1, then this represents -2L to 2L as the question asks);
x = [-2:0.01:2];

% define the exact function
% definition of f(x) 
f = x;


% Now do the Fourier series approximation
% number of terms to keep in the summation
N = 100;

% initialize the array that will hold the fourier series to zeros.
F = zeros(size(x));  

% sum over the N terms
for n = 1:N
    F = F - 2/pi * sin(n*pi*x)/n;
end
F = 1 + F;

% make a graph to compare the Fourier Series to the original function

figure;
hold all
plot(x,f,'LineWidth',2);
plot(x,F,'LineWidth',2);
legend('f(x)',['Fourier Series with ',num2str(N),' terms']);
xlabel('x');
box



