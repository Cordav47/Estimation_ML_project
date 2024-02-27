function [theta] = RLS_ARX(y, u, n)
N = length(y)-n;
%initialize theta and phi
theta = zeros(2*n, 1);
phi_y = zeros(1, n);
phi_u = zeros(1, n);
phi = zeros(2*n,1);
%S must be initialized not 0 (to avoid problem in the inversion)
S = eye(2*n); 



for i = n+1:N+n
    %phi(t) = [-y(t-1) ... -y(t-n) u(t-1) ... u(t-n)]
    %phi_y = [flip(y(i-n:i-1))'];
    %phi_u = [flip(u(i-n:i-1))'];
    %phi = [-phi_y phi_u]';
    for k = 1:n
        phi_y(k) = y(i-k);
        phi_u(k) = u(i-k);
    end
    %S(t) = S(t-1) + phi(t)*phi(t)^T
    phi = [-phi_y, phi_u]';
    
    S = S + phi*phi';
    % K = S^-1 *phi
    K = inv(S)*phi;
    %e = y -yhat
    epsilon = y(i) -phi'*theta;
    theta = theta +K*epsilon;
end



end