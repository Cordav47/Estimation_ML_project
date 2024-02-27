function Er = Misclassifier(Y, Y2)
%Misclassifier simply confront the output, if they are different increase a
%counter and then return the error rate
errorcounter = 0;
for i = 1:length(Y)
    if Y(i) ~= Y2(i)
        errorcounter = errorcounter +1;
    end
end

Er = errorcounter/length(Y);
end