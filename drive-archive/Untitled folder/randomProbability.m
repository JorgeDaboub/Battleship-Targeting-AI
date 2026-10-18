function probability = randomProbability(trials)
% A function to calcualte the probability of a ship being in a certain
% location based upon the random placement of ships

%% For loop
probability = zeros(10,10);
array = zeros(10,10);
counter = 0;
while counter < trials
    array = randomPlacement;
    counter = counter + 1;
    for ix = 1:10
        for i = 1:10
            if array(ix,i) ~= 0
                probability(ix,i) = probability(ix,i)+1;
            end
            
        end
    end
end
for ix = 1:10
    for i = 1:10
        probability(ix,i) = (probability(ix,i))/counter;
    end
end

