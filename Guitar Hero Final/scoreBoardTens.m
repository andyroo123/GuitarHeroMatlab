function [tens] = scoreBoardTens(score)
    score = round(score);
    score = score - mod(score,10);
    tens = mod(score,100);
end

