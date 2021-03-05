function IntroSong

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

%% Song
introGreen
introRed
introYellow
introBlue
introOrange
introRed
introBlue
introYellow
introGreen
Chorus1_Part1
introGreen
introRed
introOrange
introBlue

%%
fprintf('CONGRADULATIONS! You completed the intro song! \nConsider trying Flamingo now (It is a little harder) \n')


end

