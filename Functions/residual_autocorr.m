function [re] = residual_autocorr(e, tau)
%initialize the vectors
N = length(e);
re = 0;
%compute autocorrelation for a given lag tau
for i= tau+1:N-tau
    re = re + e(i)*e(i-tau);
end
%And divide by N
re = re/N;
end