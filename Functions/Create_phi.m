function PHI = Create_phi(u1, u2, order)
l = length(u1);
%The function can be used for both second order and third order phi.
%It assigns to every row the 6 or ten values corresponding to a  third or 
%second order decision boundary
if order == 3
    
    PHI = zeros(l,10);
    for i = 1:l
        PHI(i,1) = 1;
        PHI(i,2) = u1(i);
        PHI(i,3) = u2(i);
        PHI(i,4) = u2(i)*u1(i);
        PHI(i,5) = u1(i)^2;
        PHI(i,6) = u2(i)^2;
        PHI(i,7) = u1(i)^2 * u2(i);
        PHI(i,8) = u1(i) *u2(i)^2;
        PHI(i,9) = u1(1)^3;
        PHI(i,10) = u2(i)^3;
    end

elseif order == 2
    PHI = zeros(l,6);
    for i = 1:l
        PHI(i,1) = 1;
        PHI(i,2) = u1(i);
        PHI(i,3) = u2(i);
        PHI(i,4) = u2(i)*u1(i);
        PHI(i,5) = u1(i)^2;
        PHI(i,6) = u2(i)^2;
        
    end



end
end