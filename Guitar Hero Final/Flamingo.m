clc
clear;

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

drawScene(my_scene, board_display, hit_marks);
points = 0;

[y, Fs] = audioread('Flamingo.mp3');
player = audioplayer(y, Fs);
;





t = timer('TimerFcn', 'stat=false;',... 
                 'StartDelay',197);
start(t)

stat=true;
time = -34;
while(stat==true)
    if time == 20
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 20.25
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 20.5
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 20.75
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 21
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;

        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 21.25
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 21.5
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 21.75
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 22
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 22.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 22.5
        board_display(10,3) = blank;
        
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 22.75
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 23
        board_display(10,4) = blank;
        
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 23.25       
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 23.5      
        board_display(10,5) = blank;
        
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 23.75        
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 24        
        board_display(10,4) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 24.25
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 24.5
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 24.75
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 25
        board_display(10,5) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 25.25
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 25.5
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 25.75
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 26
        board_display(10,5) = blank;
        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 26.25      
        board_display(10,6) = blank;
        
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 26.5
        board_display(10,5) = blank;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 26.75
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 27
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(1,4) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 27.25
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 27.5
        board_display(10,4) = blank;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;              
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 27.75
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;              
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 28
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue; 
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 28.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue; 
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 28.5
        board_display(10,3) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue; 
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 28.75        
        board_display(7,5) = blank;
        board_display(8,5) = blue; 
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 29
        board_display(8,5) = blank;
        board_display(9,5) = blue; 
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 29.25
        board_display(9,5) = blank;
        board_display(10,5) = blue; 
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 29.5
        board_display(10,5) = blank;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 29.75        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 30
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 30.25
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 30.5
        board_display(10,4) = blank;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 30.75
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 31
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 31.25
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 31.5
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 31.75
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
                tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 32
        board_display(10,2) = blank;
        
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 32.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 32.5
        board_display(10,3) = blank;
        
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 32.75
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 33
        board_display(10,4) = blank;
        
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 33.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
                tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 33.5
        board_display(10,3) = blank;
        
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 33.75
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 34
        board_display(10,4) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 34.25
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 34.5
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 34.75
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 35
        board_display(10,5) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 35.25
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 35.5
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 35.75
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 36
        board_display(10,5) = blank;
        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 36.25
        board_display(10,6) = blank;
        
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 36.5
        board_display(10,5) = blank;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 36.75       
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 37
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 37.5
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 37.75 
        board_display(10,4) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 38
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 38.25
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 38.5
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 38.75
        board_display(10,5) = blank;
        
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 39
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 39.25
        board_display(10,4) = blank;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 39.5
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 39.75
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 40
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        

        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 40.25
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 40.5
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 40.75
        board_display(10,3) = blank;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 41
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;  
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 41.25
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 41.5
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,6) = orange;        
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 41.75
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;        
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 42
        board_display(10,2) = blank;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange; 
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 42.25
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange; 
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time  == 42.5
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange; 
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 42.75
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange; 
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 43
        board_display(10,6) = blank;
        
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange; 
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 43.25
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange; 
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 43.5
        board_display(10,2) = blank;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange; 
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 43.75
        board_display(9,6) = blank;
        board_display(10,6) = orange; 
        
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 44
        board_display(10,6) = blank;
        
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 44.25
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 44.5
        board_display(10,5) = blank;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 44.75
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 45
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 45.25
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 45.5
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 45.75
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 46
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 46.25
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 46.5
        board_display(10,4) = blank;
        
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 46.75
        board_display(10,3) = blank;
        
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 47       
        board_display(10,2) = blank;
        
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 47.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 47.5
        board_display(10,3) = blank;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 47.75        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 48
        board_display(10,6) = blank;
        
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 48.25
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 48.5
        board_display(10,2) = blank;
      
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 48.75
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 49
        board_display(10,3) = blank;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 49.25        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 49.5
        board_display(10,6) = blank;
        
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
    elseif time == 49.75
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 50
        board_display(10,2) = blank;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 50.25
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
            points = points + elapsedTime;
        else
            points = points + int_point + 2;
        end
        
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 50.5
        board_display(10,6) = blank;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,3) = red;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 50.75
    board_display(9,6) = blank;
    board_display(10,6) = orange;
        
    board_display(7,2) = blank;
    board_display(8,2) = green;
       
    board_display(5,6) = blank;
    board_display(6,6) = orange;
        
    board_display(3,2) = blank;
    board_display(4,2) = green;
        
    board_display(1,3) = blank;
    board_display(2,3) = red;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '5')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end    
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 51
    board_display(10,6) = blank;
        
    board_display(8,2) = blank;
    board_display(9,2) = green;
       
    board_display(6,6) = blank;
    board_display(7,6) = orange;
        
    board_display(4,2) = blank;
    board_display(5,2) = green;
        
    board_display(2,3) = blank;
    board_display(3,3) = red;
    
    board_display(1,6) = orange;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 51.25       
    board_display(9,2) = blank;
    board_display(10,2) = green;
       
    board_display(7,6) = blank;
    board_display(8,6) = orange;
        
    board_display(5,2) = blank;
    board_display(6,2) = green;
        
    board_display(3,3) = blank;
    board_display(4,3) = red;
    
    board_display(1,6) = blank;
    board_display(2,6) = orange;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '1')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 51.5
    board_display(10,2) = blank;
       
    board_display(8,6) = blank;
    board_display(9,6) = orange;
        
    board_display(6,2) = blank;
    board_display(7,2) = green;
        
    board_display(4,3) = blank;
    board_display(5,3) = red;
    
    board_display(2,6) = blank;
    board_display(3,6) = orange;
    
    board_display(1,2) = green;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 51.75       
    board_display(9,6) = blank;
    board_display(10,6) = orange;
        
    board_display(7,2) = blank;
    board_display(8,2) = green;
        
    board_display(5,3) = blank;
    board_display(6,3) = red;
    
    board_display(3,6) = blank;
    board_display(4,6) = orange;
    
    board_display(1,2) = blank;
    board_display(2,2) = green;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '5')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 52
    board_display(10,6) = blank;
        
    board_display(8,2) = blank;
    board_display(9,2) = green;
        
    board_display(6,3) = blank;
    board_display(7,3) = red;
    
    board_display(4,6) = blank;
    board_display(5,6) = orange;
    
    board_display(2,2) = blank;
    board_display(3,2) = green;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 52.25       
    board_display(9,2) = blank;
    board_display(10,2) = green;
       
    board_display(7,3) = blank;
    board_display(8,3) = red;
    
    board_display(5,6) = blank;
    board_display(6,6) = orange;
    
    board_display(3,2) = blank;
    board_display(4,2) = green;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '1')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 52.5
    board_display(10,2) = blank;
       
    board_display(8,3) = blank;
    board_display(9,3) = red;
    
    board_display(6,6) = blank;
    board_display(7,6) = orange;
    
    board_display(4,2) = blank;
    board_display(5,2) = green;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    board_display(1,2) = red;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 52.75       
    board_display(9,3) = blank;
    board_display(10,3) = red;
    
    board_display(7,6) = blank;
    board_display(8,6) = orange;
    
    board_display(5,2) = blank;
    board_display(6,2) = green;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    board_display(1,2) = blank;
    board_display(2,2) = red;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '2')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 53
    board_display(10,3) = blank;
    
    board_display(8,6) = blank;
    board_display(9,6) = orange;
    
    board_display(6,2) = blank;
    board_display(7,2) = green;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(2,2) = blank;
    board_display(3,2) = red;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 53.25   
    board_display(9,6) = blank;
    board_display(10,6) = orange;
    
    board_display(7,2) = blank;
    board_display(8,2) = green;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(3,2) = blank;
    board_display(4,2) = red;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '5')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 53.5
    board_display(10,6) = blank;
    
    board_display(8,2) = blank;
    board_display(9,2) = green;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(4,2) = blank;
    board_display(5,2) = red;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 53.75
    board_display(9,2) = blank;
    board_display(10,2) = green;
    
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(5,2) = blank;
    board_display(6,2) = red;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '1')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 54
    board_display(10,2) = blank;
    
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(6,2) = blank;
    board_display(7,2) = red;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 54.25    
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(7,2) = blank;
    board_display(8,2) = red;
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 54.5
    board_display(10,5) = blank;
    
    board_display(8,2) = blank;
    board_display(9,2) = red;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 54.75    
    board_display(9,2) = blank;
    board_display(10,2) = red;
    
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '2')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 55
    board_display(10,2) = blank;
    
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 55.25
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
    
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 55.5
    board_display(10,4) = blank;
    
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 55.75
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 56
    board_display(10,5) = blank;
    
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 56.25
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    board_display(1,6) = orange;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 56.5
    board_display(10,4) = blank;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    board_display(1,6) = blank;
    board_display(2,6) = orange;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 56.75
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    board_display(2,6) = blank;
    board_display(3,6) = orange;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 57
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(3,6) = blank;
    board_display(4,6) = orange;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 57.25
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(4,6) = blank;
    board_display(5,6) = orange;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 57.5
    board_display(10,5) = blank;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(5,6) = blank;
    board_display(6,6) = orange;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 57.75    
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(6,6) = blank;
    board_display(7,6) = orange;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 58
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(7,6) = blank;
    board_display(8,6) = orange;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 58.25
    board_display(9,5) = blank;
    board_display(10,5) = blue;
   
    board_display(8,6) = blank;
    board_display(9,6) = orange;
    
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 58.5
    board_display(10,5) = blank;
   
    board_display(9,6) = blank;
    board_display(10,6) = orange;
    
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    board_display(1,3) = red;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '5')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 58.75
    board_display(10,6) = blank;
    
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    board_display(1,3) = blank;
    board_display(2,3) = red;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 59
    board_display(10,5) = blank;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
    
    board_display(2,3) = blank;
    board_display(3,3) = red;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 59.25
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
    
    board_display(3,3) = blank;
    board_display(4,3) = red;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 59.5
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
    
    board_display(4,3) = blank;
    board_display(5,3) = red;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
elseif time == 59.75
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
    
    board_display(5,3) = blank;
    board_display(6,3) = red;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks)
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
        points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
    drawScene(my_scene, board_display, hit_marks)    
elseif time == 60
    board_display(10,4) = blank;
    
    board_display(6,3) = blank;
    board_display(7,3) = red;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;    
   
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 60.25        
    board_display(7,3) = blank;
    board_display(8,3) = red;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 60.5
    board_display(8,3) = blank;
    board_display(9,3) = red;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);    
elseif time == 60.75
    board_display(9,3) = blank;
    board_display(10,3) = red;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '2')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 61
    board_display(10,3) = blank;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 61.25
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 61.5
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
    
    
elseif time == 61.75
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks); 
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 62 
    board_display(10,5) = blank;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
    
    board_display(1,2) = green;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 62.25
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
    
    board_display(1,2) = blank;
    board_display(2,2) = green;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 62.5
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
    
    board_display(2,2) = blank;
    board_display(3,2) = green;
    
    board_display(1,3) = red;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 62.75
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
    
    board_display(3,2) = blank;
    board_display(4,2) = green;
    
    board_display(1,3) = blank;
    board_display(2,3) = red;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 63
    board_display(10,4) = blank;
    
    board_display(4,2) = blank;
    board_display(5,2) = green;
    
    board_display(2,3) = blank;
    board_display(3,3) = red;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 63.25
    board_display(5,2) = blank;
    board_display(6,2) = green;
    
    board_display(3,3) = blank;
    board_display(4,3) = red;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 63.5
    board_display(6,2) = blank;
    board_display(7,2) = green;
    
    board_display(4,3) = blank;
    board_display(5,3) = red;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    board_display(1,3) = red;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 63.75
    board_display(7,2) = blank;
    board_display(8,2) = green;
    
    board_display(5,3) = blank;
    board_display(6,3) = red;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    board_display(1,3) = blank;
    board_display(2,3) = red;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 64
    board_display(8,2) = blank;
    board_display(9,2) = green;
    
    board_display(6,3) = blank;
    board_display(7,3) = red;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    board_display(2,3) = blank;
    board_display(3,3) = red;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 64.25
    board_display(9,2) = blank;
    board_display(10,2) = green;
    
    board_display(7,3) = blank;
    board_display(8,3) = red;
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    board_display(3,3) = blank;
    board_display(4,3) = red;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '1')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 64.5
    board_display(10,2) = blank;
    
    board_display(8,3) = blank;
    board_display(9,3) = red;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
   
    board_display(4,3) = blank;
    board_display(5,3) = red;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 64.75   
    board_display(9,3) = blank;
    board_display(10,3) = red;
    
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
   
    board_display(5,3) = blank;
    board_display(6,3) = red;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '2')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 65
    board_display(10,3) = blank;
    
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
   
    board_display(6,3) = blank;
    board_display(7,3) = red;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 65.25
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
   
    board_display(7,3) = blank;
    board_display(8,3) = red;
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 65.5
    board_display(10,4) = blank;
   
    board_display(8,3) = blank;
    board_display(9,3) = red;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 65.75
    board_display(9,3) = blank;
    board_display(10,3) = red;
    
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '2')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 66
    board_display(10,3) = blank;
  
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 66.25
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    board_display(1,6) = orange;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 66.5
    board_display(10,4) = blank;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    board_display(1,6) = blank;
    board_display(2,6) = orange;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 66.75
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    board_display(2,6) = blank;
    board_display(3,6) = orange;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 67
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(3,6) = blank;
    board_display(4,6) = orange;
    
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 67.25
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(4,6) = blank;
    board_display(5,6) = orange;
    
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 67.5
    board_display(10,5) = blank;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(5,6) = blank;
    board_display(6,6) = orange;
    
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 67.75
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(6,6) = blank;
    board_display(7,6) = orange;
    
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 68
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(7,6) = blank;
    board_display(8,6) = orange;
    
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 68.25
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(8,6) = blank;
    board_display(9,6) = orange;
    
    board_display(7,5) = blank;
    board_display(8,5) = blue;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 68.5
    board_display(10,5) = blank;
    
    board_display(9,6) = blank;
    board_display(10,6) = orange;
    
    board_display(8,5) = blank;
    board_display(9,5) = blue;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    board_display(1,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '5')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 68.75
    board_display(10,6) = blank;
    
    board_display(9,5) = blank;
    board_display(10,5) = blue;
    
    board_display(5,4) = blank;
    board_display(6,4) = yellow;
    
    board_display(1,5) = blank;
    board_display(2,5) = blue;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '4')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 69
    board_display(10,5) = blank;
    
    board_display(6,4) = blank;
    board_display(7,4) = yellow;
   
    board_display(2,5) = blank;
    board_display(3,5) = blue;
    
    board_display(1,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 69.25
    board_display(7,4) = blank;
    board_display(8,4) = yellow;
   
    board_display(3,5) = blank;
    board_display(4,5) = blue;
    
    board_display(1,4) = blank;
    board_display(2,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 69.5
    board_display(8,4) = blank;
    board_display(9,4) = yellow;
   
    board_display(4,5) = blank;
    board_display(5,5) = blue;
    
    board_display(2,4) = blank;
    board_display(3,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 69.75
    board_display(9,4) = blank;
    board_display(10,4) = yellow;
   
    board_display(5,5) = blank;
    board_display(6,5) = blue;
    
    board_display(3,4) = blank;
    board_display(4,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
    
    tic;
    point1 = getKeyboardInput(my_scene);
    elapsedTime = toc; 
    int_point = elapsedTime;
    
    if(point1 == '3')
    points = points + elapsedTime;
    else
    points = points + int_point + 2;
    end   
    scoreDisplay = scoreBoardOnes(points);
    if scoreDisplay == 1
        hit_marks(4,13) = num1;
    elseif scoreDisplay == 2
        hit_marks(4,13) = num2;
    elseif scoreDisplay == 3
        hit_marks(4,13) = num3;
    elseif scoreDisplay == 4
        hit_marks(4,13) = num4;
    elseif scoreDisplay == 5
        hit_marks(4,13) = num5;
    elseif scoreDisplay == 6
        hit_marks(4,13) = num6;
    elseif scoreDisplay == 7
        hit_marks(4,13) = num7;
    elseif scoreDisplay == 8
        hit_marks(4,13) = num8;
    elseif scoreDisplay == 9
        hit_marks(4,13) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,13) = num0;
    end
    scoreDisplay = scoreBoardTens(points);
    if scoreDisplay == 10
        hit_marks(4,12) = num1;
    elseif scoreDisplay == 20
        hit_marks(4,12) = num2;
    elseif scoreDisplay == 30
        hit_marks(4,12) = num3;
    elseif scoreDisplay == 40
        hit_marks(4,12) = num4;
    elseif scoreDisplay == 50
        hit_marks(4,12) = num5;
    elseif scoreDisplay == 60
        hit_marks(4,12) = num6;
    elseif scoreDisplay == 70
        hit_marks(4,12) = num7;
    elseif scoreDisplay == 80
        hit_marks(4,12) = num8;
    elseif scoreDisplay == 90
        hit_marks(4,12) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,12) = num0;
    end
    scoreDisplay = scoreBoardHundreds(points);
    if scoreDisplay == 100
        hit_marks(4,11) = num1;
    elseif scoreDisplay == 200
        hit_marks(4,11) = num2;
    elseif scoreDisplay == 300
        hit_marks(4,11) = num3;
    elseif scoreDisplay == 400
        hit_marks(4,11) = num4;
    elseif scoreDisplay == 500
        hit_marks(4,11) = num5;
    elseif scoreDisplay == 600
        hit_marks(4,11) = num6;
    elseif scoreDisplay == 700
        hit_marks(4,11) = num7;
    elseif scoreDisplay == 800
        hit_marks(4,11) = num8;
    elseif scoreDisplay == 900
        hit_marks(4,11) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,11) = num0;
    end
    scoreDisplay = scoreBoardThousands(points);
    if scoreDisplay == 1000
        hit_marks(4,10) = num1;
    elseif scoreDisplay == 2000
        hit_marks(4,10) = num2;
    elseif scoreDisplay == 3000
        hit_marks(4,10) = num3;
    elseif scoreDisplay == 4000
        hit_marks(4,10) = num4;
    elseif scoreDisplay == 5000
        hit_marks(4,10) = num5;
    elseif scoreDisplay == 6000
        hit_marks(4,10) = num6;
    elseif scoreDisplay == 7000
        hit_marks(4,10) = num7;
    elseif scoreDisplay == 8000
        hit_marks(4,10) = num8;
    elseif scoreDisplay == 9000
        hit_marks(4,10) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,10) = num0;
    end
    scoreDisplay = scoreBoardTenThousands(points);
    if scoreDisplay == 10000
        hit_marks(4,9) = num1;
    elseif scoreDisplay == 20000
        hit_marks(4,9) = num2;
    elseif scoreDisplay == 30000
        hit_marks(4,9) = num3;
    elseif scoreDisplay == 40000
        hit_marks(4,9) = num4;
    elseif scoreDisplay == 50000
        hit_marks(4,9) = num5;
    elseif scoreDisplay == 60000
        hit_marks(4,9) = num6;
    elseif scoreDisplay == 70000
        hit_marks(4,9) = num7;
    elseif scoreDisplay == 80000
        hit_marks(4,9) = num8;
    elseif scoreDisplay == 90000
        hit_marks(4,9) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,9) = num0;
    end
    scoreDisplay = scoreBoardMillions(points);
    if scoreDisplay == 100000
        hit_marks(4,8) = num1;
    elseif scoreDisplay == 200000
        hit_marks(4,8) = num2;
    elseif scoreDisplay == 300000
        hit_marks(4,8) = num3;
    elseif scoreDisplay == 400000
        hit_marks(4,8) = num4;
    elseif scoreDisplay == 500000
        hit_marks(4,8) = num5;
    elseif scoreDisplay == 600000
        hit_marks(4,8) = num6;
    elseif scoreDisplay == 700000
        hit_marks(4,8) = num7;
    elseif scoreDisplay == 800000
        hit_marks(4,8) = num8;
    elseif scoreDisplay == 900000
        hit_marks(4,8) = num9;
    elseif scoreDisplay == 0
        hit_marks(4,8) = num0;
    end
elseif time == 70
    board_display(10,4) = blank;
   
    board_display(6,5) = blank;
    board_display(7,5) = blue;
    
    board_display(4,4) = blank;
    board_display(5,4) = yellow;
    
    drawScene(my_scene, board_display, hit_marks);
elseif time == 70.25
        board_display(7,5) = blank;
        board_display(8,5) = blue;
    
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 70.5
        board_display(8,5) = blank;
        board_display(9,5) = blue;
    
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(1,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 70.75
        board_display(9,5) = blank;
        board_display(10,5) = blue;
    
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end   
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end   
    elseif time == 71
        board_display(10,5) = blank;
    
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 71.25
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end   
        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 71.5
        board_display(10,4) = blank;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 71.75       
        board_display(5,3) = blank;
        board_display(6,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 72
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(1,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 72.25
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 72.5
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 72.75
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 73
        board_display(10,3) = blank;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(1,6) = orange;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 73.25
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 73.5
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 73.75
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 74
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,6) = orange;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 74.25
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 74.5
        board_display(10,2) = blank;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 74.25
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 74.5
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(1,5) = blue;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 74.75
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 75
        board_display(10,6) = blank;
        
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 75.25
        board_display(9,2) = blank;
        board_display(10,2) = green;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(3,5) = blank;
        board_display(4,5) = blue;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 75.5
        board_display(10,2) = blank;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(4,5) = blank;
        board_display(5,5) = blue;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 75.75
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(5,5) = blank;
        board_display(6,5) = blue;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 76
        board_display(10,6) = blank;
        
        board_display(6,5) = blank;
        board_display(7,5) = blue;
        
        board_display(1,4) = yellow;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 76.25
        board_display(7,5) = blank;
        board_display(8,5) = blue;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        board_display(1,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 76.5
        board_display(8,5) = blank;
        board_display(9,5) = blue;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        board_display(1,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 76.75
        board_display(9,5) = blank;
        board_display(10,5) = blue;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
    
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '4')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 77
        board_display(10,5) = blank;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 77.25
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
    
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 77.5
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
    
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 77.75
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
    
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 78
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
       
        board_display(4,3) = blank;
        board_display(5,3) = red;
    
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        board_display(1,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 78.25
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
       
        board_display(5,3) = blank;
        board_display(6,3) = red;
    
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        board_display(1,2) = blank;
        board_display(2,2) = green;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '3')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 78.5
        board_display(10,4) = blank;
        
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(8,2) = blank;
        board_display(9,2) = green;
       
        board_display(6,3) = blank;
        board_display(7,3) = red;
    
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        board_display(2,2) = blank;
        board_display(3,2) = green;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 78.75
        board_display(10,3) = blank;
        
        board_display(9,2) = blank;
        board_display(10,2) = green;
       
        board_display(7,3) = blank;
        board_display(8,3) = red;
    
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        board_display(3,2) = blank;
        board_display(4,2) = green;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '1')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 79
        board_display(10,2) = blank;
       
        board_display(8,3) = blank;
        board_display(9,3) = red;
    
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(4,2) = blank;
        board_display(5,2) = green;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);       
    elseif time == 79.25       
        board_display(9,3) = blank;
        board_display(10,3) = red;
    
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(5,2) = blank;
        board_display(6,2) = green;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks); 
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '2')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 79.5
        board_display(10,3) = blank;
    
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(6,2) = blank;
        board_display(7,2) = green;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(1,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 79.75
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(7,2) = blank;
        board_display(8,2) = green;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(1,5) = blank;
        board_display(2,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        elapsedTime = toc; 
        int_point = elapsedTime;
        
        if(point1 == '5')
        points = points + elapsedTime;
        else
        points = points + int_point + 2;
        end

        scoreDisplay = scoreBoardOnes(points);
        if scoreDisplay == 1
            hit_marks(4,13) = num1;
        elseif scoreDisplay == 2
            hit_marks(4,13) = num2;
        elseif scoreDisplay == 3
            hit_marks(4,13) = num3;
        elseif scoreDisplay == 4
            hit_marks(4,13) = num4;
        elseif scoreDisplay == 5
            hit_marks(4,13) = num5;
        elseif scoreDisplay == 6
            hit_marks(4,13) = num6;
        elseif scoreDisplay == 7
            hit_marks(4,13) = num7;
        elseif scoreDisplay == 8
            hit_marks(4,13) = num8;
        elseif scoreDisplay == 9
            hit_marks(4,13) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,13) = num0;
        end
        scoreDisplay = scoreBoardTens(points);
        if scoreDisplay == 10
            hit_marks(4,12) = num1;
        elseif scoreDisplay == 20
            hit_marks(4,12) = num2;
        elseif scoreDisplay == 30
            hit_marks(4,12) = num3;
        elseif scoreDisplay == 40
            hit_marks(4,12) = num4;
        elseif scoreDisplay == 50
            hit_marks(4,12) = num5;
        elseif scoreDisplay == 60
            hit_marks(4,12) = num6;
        elseif scoreDisplay == 70
            hit_marks(4,12) = num7;
        elseif scoreDisplay == 80
            hit_marks(4,12) = num8;
        elseif scoreDisplay == 90
            hit_marks(4,12) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,12) = num0;
        end
        scoreDisplay = scoreBoardHundreds(points);
        if scoreDisplay == 100
            hit_marks(4,11) = num1;
        elseif scoreDisplay == 200
            hit_marks(4,11) = num2;
        elseif scoreDisplay == 300
            hit_marks(4,11) = num3;
        elseif scoreDisplay == 400
            hit_marks(4,11) = num4;
        elseif scoreDisplay == 500
            hit_marks(4,11) = num5;
        elseif scoreDisplay == 600
            hit_marks(4,11) = num6;
        elseif scoreDisplay == 700
            hit_marks(4,11) = num7;
        elseif scoreDisplay == 800
            hit_marks(4,11) = num8;
        elseif scoreDisplay == 900
            hit_marks(4,11) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,11) = num0;
        end
        scoreDisplay = scoreBoardThousands(points);
        if scoreDisplay == 1000
            hit_marks(4,10) = num1;
        elseif scoreDisplay == 2000
            hit_marks(4,10) = num2;
        elseif scoreDisplay == 3000
            hit_marks(4,10) = num3;
        elseif scoreDisplay == 4000
            hit_marks(4,10) = num4;
        elseif scoreDisplay == 5000
            hit_marks(4,10) = num5;
        elseif scoreDisplay == 6000
            hit_marks(4,10) = num6;
        elseif scoreDisplay == 7000
            hit_marks(4,10) = num7;
        elseif scoreDisplay == 8000
            hit_marks(4,10) = num8;
        elseif scoreDisplay == 9000
            hit_marks(4,10) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,10) = num0;
        end
        scoreDisplay = scoreBoardTenThousands(points);
        if scoreDisplay == 10000
            hit_marks(4,9) = num1;
        elseif scoreDisplay == 20000
            hit_marks(4,9) = num2;
        elseif scoreDisplay == 30000
            hit_marks(4,9) = num3;
        elseif scoreDisplay == 40000
            hit_marks(4,9) = num4;
        elseif scoreDisplay == 50000
            hit_marks(4,9) = num5;
        elseif scoreDisplay == 60000
            hit_marks(4,9) = num6;
        elseif scoreDisplay == 70000
            hit_marks(4,9) = num7;
        elseif scoreDisplay == 80000
            hit_marks(4,9) = num8;
        elseif scoreDisplay == 90000
            hit_marks(4,9) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,9) = num0;
        end
        scoreDisplay = scoreBoardMillions(points);
        if scoreDisplay == 100000
            hit_marks(4,8) = num1;
        elseif scoreDisplay == 200000
            hit_marks(4,8) = num2;
        elseif scoreDisplay == 300000
            hit_marks(4,8) = num3;
        elseif scoreDisplay == 400000
            hit_marks(4,8) = num4;
        elseif scoreDisplay == 500000
            hit_marks(4,8) = num5;
        elseif scoreDisplay == 600000
            hit_marks(4,8) = num6;
        elseif scoreDisplay == 700000
            hit_marks(4,8) = num7;
        elseif scoreDisplay == 800000
            hit_marks(4,8) = num8;
        elseif scoreDisplay == 900000
            hit_marks(4,8) = num9;
        elseif scoreDisplay == 0
            hit_marks(4,8) = num0;
        end
    elseif time == 80
        board_display(8,2) = blank;
        board_display(9,2) = green;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(2,5) = blank;
        board_display(3,5) = blue;
        
        drawScene(my_scene, board_display, hit_marks);
    
end
    
    
  
    
    pause(.05)
    time = time + 0.25
end


function ones = scoreBoardOnes(score)
    score = round(score);
    ones = mod(score,10);
end
function tens = scoreBoardTens(score)
    score = round(score);
    score = score - mod(score,10);
    tens = mod(score,100);
end
function hundreds = scoreBoardHundreds(score)
    score = round(score);
    score = score - mod(score, 100);
    hundreds = mod(score,1000);
end
function thousands = scoreBoardThousands(score)
    score = round(score);
    score = score - mod(score,1000);
    thousands = mod(score,10000);
end
function tenThousands = scoreBoardTenThousands(score)
    score = round(score);
    score = score- mod(score,10000);
   	tenThousands = mod(score,100000);
end
function millions = scoreBoardMillions(score)
    score = round(score);
    score = score - mod(score,100000);
   	millions = mod(score,1000000);
end

