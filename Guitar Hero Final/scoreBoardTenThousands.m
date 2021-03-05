function [tenThousands] = scoreBoardTenThousands(score)
    score = round(score);
    score = score- mod(score,10000);
   	tenThousands = mod(score,100000);
end

