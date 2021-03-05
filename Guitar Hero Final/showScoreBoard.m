function showScoreBoard
    global leaderBoard;
    global leaderBoardNames;
    
    size = length(leaderBoard);
    for i = 1:size
        
       fprintf('%i: ',i)
       nameSize = strlength(leaderBoardNames(i));
       nameSize = 20 - nameSize;
       fprintf('%s', leaderBoardNames(i))
       for k = 1:nameSize
           fprintf(' ')
       end
       fprintf('%i', leaderBoard(i))
       fprintf('\n')
    end
end

