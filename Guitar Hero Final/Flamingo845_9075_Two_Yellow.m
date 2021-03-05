function Flamingo845_9075_Two_Yellow
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



time = 84.5;
while(time ~= 90.75)
    if time == 84.5
        board_display(10,6) = blank;
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 84.75
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 85
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 85.25
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 85.5
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 85.75
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 86
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 86.25
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 86.5
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 86.75
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
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
    elseif time == 87
        board_display(10,4) = blank;
       
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 87.25
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
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
    elseif time == 87.5
        board_display(10,4) = blank;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 87.75
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 88
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        board_display(1,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 88.25
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        board_display(1,4) = blank;
        board_display(2,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 88.5
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        board_display(2,4) = blank;
        board_display(3,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 88.75
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        board_display(3,4) = blank;
        board_display(4,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 89
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        board_display(4,4) = blank;
        board_display(5,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 89.25
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
        board_display(5,4) = blank;
        board_display(6,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 89.5
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(6,4) = blank;
        board_display(7,4) = yellow;
        
        drawScene(my_scene, board_display, hit_marks);       
    elseif time == 90
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
        board_display(7,4) = blank;
        board_display(8,4) = yellow;
        
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
    elseif time == 90.25
        board_display(8,4) = blank;
        board_display(9,4) = yellow;
        
        board_display(10,4) = blank;
        
        drawScene(my_scene, board_display, hit_marks);       
    elseif time == 90.5
        board_display(9,4) = blank;
        board_display(10,4) = yellow;
        
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
    elseif time == 90.75
        board_display(10,4) = blank;
        
        drawScene(my_scene, board_display, hit_marks)
        
    end
    pause(.058)
    time = time + 0.25;
end
    
end
