function [ret] = Hessian_J(z, PHI)
nz = length(z);
F = zeros(nz, 1);
W = zeros(nz);
for i= 1:nz
    F(i) = sigmoid(z(i));
    W(i,i) = F(i)*(1-F(i));
end

ret = PHI'*W*PHI;

end