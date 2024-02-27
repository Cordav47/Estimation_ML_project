function [ret] = grad_J(z, y, PHI)
%compute J'(theta)
Nt = length(y);
F = zeros(Nt, 1);
Fminusy = zeros(Nt,1);

for i = 1:Nt
    F(i) = sigmoid(z(i));
    Fminusy(i) = F(i) - y(i);
end
    
ret = PHI'*(Fminusy);

end