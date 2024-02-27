function [out] = ftest(N,cost,k)
%Just apply the formula for x in the f-test with respect to the previous
%order
out = N*((cost(k-1) - cost(k))/cost(k));

end