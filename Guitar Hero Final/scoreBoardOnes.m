function [ones] = scoreBoardOnes(score)
    score = round(score);
    ones = mod(score,10);
end

