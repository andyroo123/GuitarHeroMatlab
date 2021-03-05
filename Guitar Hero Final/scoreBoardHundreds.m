function [hundreds] = scoreBoardHundreds(score)
    score = round(score);
    score = score - mod(score, 100);
    hundreds = mod(score,1000);
end

