function counter = Whiteness_test(Residuals)
%This function given the residuals provide the Whiteness test
m = 20;
N = length(Residuals);
%compute re(0)
r0 = residual_autocorr(Residuals, 0); 
%set up vectors for autocorrelation and normalized autocorrelation
reps = zeros(m,1);
lambda = zeros(m,1);
counter = 0; %keep track of how many tests are failed
for j=1:m
    reps(j) = residual_autocorr(Residuals, j);
    lambda(j) = reps(j)/r0; %normalized test quantities
    if abs(lambda(j)) > 1.96/sqrt(N)
        counter = counter +1; %increase number of test failed
    end

end

%then display the result
if counter >= 2
    display("Whiteness test failed")
else 
    display("Whiteness test succesful")
end
end