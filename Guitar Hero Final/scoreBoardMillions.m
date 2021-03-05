function [millions] = scoreBoardMillions(score)
    score = round(score);
    score = score - mod(score,100000);
   	millions = mod(score,1000000);
end

