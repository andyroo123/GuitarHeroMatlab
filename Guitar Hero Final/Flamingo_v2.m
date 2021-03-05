clc



score = 0;

global my_scene;
global blank;
global white;
global black;
global blue;
global green;
global empty;
global red;
global yellow;
global orange;
global clear;
global num1;
global num2;
global num3;
global num4;
global num5;
global num6;
global num7;
global num8;
global num9;
global num0;
global board_display;
global hit_marks;
global points;

global player;


my_scene = simpleGameEngine('MasterMind Final 2.png',58,72);

blank = 1;
white = 2;
black = 3;
blue = 4;
green = 5;
empty = 12;
red = 9;
yellow = 11;
orange = 6;
clear = 13;
num1 = 14;
num2 = 15;
num3 = 16;
num4 = 17;
num5 = 18;
num6 = 19;
num7 = 7;
num8 = 8;
num9 = 10;
num0 = 20;

board_display = empty * ones(11, 14);
board_display(:,2:6) = blank;
hit_marks = clear * ones(11, 14);
hit_marks(10,2:6) = black;
hit_marks(4, 8:13) = num0;
drawScene(my_scene, board_display, hit_marks);
points = 0;

[y, Fs] = audioread('Flamingo.mp3');
player = audioplayer(y, Fs);
play(player);
t = timer('StartFcn',@(~,~)disp('timer started.'),'TimerFcn',@(~,~)disp(rand(1)));
tic
%% Intro
Flamingo20_30;
Flamingo30_40;
Flamingo40_50;
Flamingo50_60;
Flamingo60_70;
Flamingo70_80;
Flamingo80_845;
%% Verse 1
Flamingo845_9075_Two_Yellow;
Flamingo90_100_Three_Yellow;
Flamingo100_110;
Flamingo110_120;
Flamingo120_130;
Flamingo100_110;
Flamingo130_140;
%% Chorus 1
Chorus1_Part1
Chorus1_Part2
Chorus1_Part3
Chorus1_Part4
%% Verse 2
Verse2_Part1
Verse2_Part2
Verse2_Part3
Verse2_Part4
Verse2_Part5
%% Solo
Solo_Part1
Solo_Part2
%% Chorus 2
Chorus2_Part1
Chorus2_Part2
Chorus2_Part3
Chorus2_Part4
%% Bridge
Bridge_Part1
%% Chorus 3
Chorus3_Part1
Chorus3_Part3
Chorus2_Part2
%% Outro 
Outro_Part1
Outro_Part2
Outro_Part3
Outro_Part2
Outro_Part2
Outro_Part3
Outro_Final
Outro_Final2
Outro_Final3
Outro_Final4
Outro_Final5
%% Other Stuff
totalTime = toc;
if(totalTime <= 204)
    fprintf('\nCONGRADULATIONS!!!!! \nYou Have Completed Flamingo\n you score was %d', points)
    answer = input('\nWould you like to add your name and score to the score board? ("yes" or "no")');
    while (answer ~= "yes") || (answer ~= "no")
        answer = input('\nWould you like to add your name and score to the score board? ("yes" or "no")');
    end
    if answer == "yes"
        addleader(points)
    end
    showScoreBoard
else
    fprintf('\nSORRY \nYou did not finish Flamingo in time \nBettter Luck Next Time!\n') 
    showScoreBoard
end
delete(totalTime);
