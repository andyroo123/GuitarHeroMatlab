function [thousands] = scoreBoardThousands(score)
    score = round(score);
    score = score - mod(score,1000);
    thousands = mod(score,10000);
end

