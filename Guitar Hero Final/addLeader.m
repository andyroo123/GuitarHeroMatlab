function addLeader(score)

    global leaderBoard;
    global leaderBoardNames;
    
    
    size = length(leaderBoard);
    found = 0;
    str = input('Please enter your name so that we can add your score to the leaderboard(20 characters max): ','s');
    while(strlength(str) > 20)
        str = input('The name you enter exceeds the maximum of 25 characters! \nPlease enter another name: ','s');
    end
    str = string(str);
    for i = 1:size
        if leaderBoard(i) < score
            found = 1;
            break;
        end
    end
    if found == 1
       firstPart = leaderBoard(1:i - 1);
       secondPart = leaderBoard(i:end);
       leaderBoard = [firstPart score secondPart];
       firstPart = leaderBoardNames(1:i - 1);
       secondPart = leaderBoardNames(i:end);
       leaderBoardNames = [firstPart str secondPart];
    elseif size == 0 && found == 0

        leaderBoardNames = string.empty;
        leaderBoard(1) = score;
        leaderBoardNames(1) = str;
    elseif found == 0
        leaderBoard(end + 1) = score;
        leaderBoardNames(end + 1) = str;
    end
  
end

