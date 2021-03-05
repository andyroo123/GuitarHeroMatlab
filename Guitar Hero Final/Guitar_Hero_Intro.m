clc
clear

fprintf('Welcome to MATLAB HERO \n\n')
songName = input('Please type a song that you would like to play: \n"Easy Intro Song" \n"Flamingo" \n','s');
while(songName ~= "Easy Intro Song") || (songName ~= "Flamingo")
    songName = input('The song you selected is not one htat is currently in the library, please try again: \n','s');
end
if songName == "Easy Intro Song"
    
elseif songName == "Flamingo"
    Flaming_v2
end