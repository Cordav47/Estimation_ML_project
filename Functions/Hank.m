function [H] = Hank(x,n,N)

H = zeros(N-n, n);

for i = 1:n
    H(:,i) = x(n+1-i:N-i);
end


end