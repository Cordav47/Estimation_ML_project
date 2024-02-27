function [J] = ComputeCost(z,y)
%This function, as suggest its name, compute the cost
Nj = length(y);
J = 0;
for i = 1:Nj
    J = J + y(i) * log(sigmoid(z(i)))+ (1-y(i))*log(1- sigmoid(z(i)));
end
J = -J;
end