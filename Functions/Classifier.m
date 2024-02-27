function Y = Classifier(z)
%Classifier that given a series of input collected in phitest and the
%coefficients  theta produces an output Y for each row of phitest. We
%assign the output to the biggest value of z. To be rigorous we should
%compute the sigmoid function that tell us the percentage of an input to be
%an output (given that SF is monotonous -> the bigger z the bigger the percentage
%we don't do that).
% Using the sigmoid function could be useful if we want to build a more complex classifier 
% in where we leave undecided points were max SF value is below a certain threshold, 
% but for now we just assign all the points.
%z = phitest*theta;
Y = zeros(length(z), 1);
for i = 1:length(Y)
    [M,I] = max(z(i,:));
    Y(i) = I;
end

end