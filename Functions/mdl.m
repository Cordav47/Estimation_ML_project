function [out] = mdl(N,cost, k)

p = 2*k; %for ARX models
%basically it aplies the mdl formula
out = N*log(cost(k)) + 2*p*log(N);
end