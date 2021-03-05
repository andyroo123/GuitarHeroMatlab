clc
clear

continueGame = 1;

global leaderBoard;
global leaderBoardNames;

fprintf('Welcome To MATLAB HERO \n\n')
while(continueGame == 1)
    fprintf('Instructions: \nHit the correspodnging color on the guitar when the colored not comes in the circle, but do not be too slow or you will lose! \n');
    song=input('Please type a song that you would like to play: \nEasy Intro Song \nFlamingo \n',"s");
   % song = input(' ', 's');
    song1 = "Easy Intro Song";
    song2 = "Flamingo";
    while (song ~= song2) && (song ~= song1)
        song = input('The song you selected is not one that is currently in the library, please try again: \n','s');
    end
    if song == song1
        Intro_Song
    elseif song == song2
        Flamingo_v2
    end
    userInput = input('\nIf you would like to continue playing MATLAB HERO, enter "Yes"\nIf you would no longer like to play MATLAB HERO enter "Done" \n','s');
    while (userInput ~= "Yes") && (userInput ~= "Done")
        userInput = input('The option you choose is not an option, please try again.','s');
    end
    if userInput == "Yes"
        continueGame = 1;
    elseif userInput == "Done"
        continueGame = 0;
    end    
    answer = input('\nWould you like to see the scoreboard of people who have successfuly completed Flamingo? ("yes" or "no")','s');
    while (answer ~= "yes") || (answer ~= "no")
        answer = input('\nWould you like to see the scoreboard of people who have successfuly completed Flamingo? ("yes" or "no")','s');
    end
    if answer == "yes"
        showScoreBoard
    end
    if continueGame == 0
        finish = input('Are you sure you would like quit MatLab Hero, this will delete the scoreboard ("yes" or "no")','s');
    end
    while (finish ~= "yes") && (finish ~= "no")
        userInput = input('The option you choose is not an option, please try again.','s');
    end
    if finish == "no"
        continueGame = 1;
    end
        
end