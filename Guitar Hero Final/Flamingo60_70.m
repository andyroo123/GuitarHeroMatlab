function Flamingo60_70
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
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



time = 60;
while(time ~= 70)
   if time == 60
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
   end
    pause(.048)
    time = time + 0.25;
end
end

