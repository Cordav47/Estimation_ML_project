function ybin = Ybin(Ytrain, M)
 % Function that trasform the actual Ytrain in a binary result with one in
 % the position of the Ytrain = M and 0 elsewhere
 ybin = zeros(length(Ytrain), 1);
 for i= 1:length(Ytrain)
     if Ytrain(i) == M
         ybin(i) = 1;
     end
 end
end