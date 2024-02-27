function [theta] = RLS_AR(y, u, n)
N = length(y)-n;
theta = zeros(2*n, 1);
S = eye(2*n)*0.1;

for i = n+1:N+n
    phi = [-flip(y(i-n:i-1))' flip(u(i-n:i-1))']';
    S = S + phi*phi';
    K = inv(S)*phi;
    epsilon = y(i) -phi'*theta;
    theta = theta +K*epsilon;
end

end