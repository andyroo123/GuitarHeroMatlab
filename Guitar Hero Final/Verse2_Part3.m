function Verse2_Part3


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



time = 233.75;
while(time ~= 242.75)
    if time == 235.5
        board_display(1,3) = red;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 235.75
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 236
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 236.25
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 236.5
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 236.75
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 237
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(1,3) = red;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 237.25 
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 237.5
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 237.75
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        
        elapsedTime = toc; 
        int_point = elapsedTime;
        %here
        if(point1 == '2') || (point1 == '5')
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
    elseif time == 238
        board_display(10,3) = blank;
        
        board_display(10,6) = blank;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 238.25
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 238.5
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(1,3) = red;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 238.75
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 239
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        
    elseif time == 239.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        
        elapsedTime = toc; 
        int_point = elapsedTime;
        %here
        if(point1 == '2') || (point1 == '5')
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
    elseif time == 239.5
        board_display(10,3) = blank;
        
        board_display(10,6) = blank;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 239.75
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 240
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        board_display(1,3) = red;
        
        board_display(1,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 240.25
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        board_display(1,3) = blank;
        board_display(2,3) = red;
        
        board_display(1,6) = blank;
        board_display(2,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 240.5
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        board_display(2,3) = blank;
        board_display(3,3) = red;
        
        board_display(2,6) = blank;
        board_display(3,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 240.75
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        board_display(3,3) = blank;
        board_display(4,3) = red;
        
        board_display(3,6) = blank;
        board_display(4,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        
        elapsedTime = toc; 
        int_point = elapsedTime;
        %here
        if(point1 == '2') || (point1 == '5')
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
    elseif time == 241
        board_display(10,3) = blank;
        
        board_display(10,6) = blank;
        
        board_display(4,3) = blank;
        board_display(5,3) = red;
        
        board_display(4,6) = blank;
        board_display(5,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 241.25
        board_display(5,3) = blank;
        board_display(6,3) = red;
        
        board_display(5,6) = blank;
        board_display(6,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 241.5
        board_display(6,3) = blank;
        board_display(7,3) = red;
        
        board_display(6,6) = blank;
        board_display(7,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 241.75
        board_display(7,3) = blank;
        board_display(8,3) = red;
        
        board_display(7,6) = blank;
        board_display(8,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 242
        board_display(8,3) = blank;
        board_display(9,3) = red;
        
        board_display(8,6) = blank;
        board_display(9,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
    elseif time == 242.25
        board_display(9,3) = blank;
        board_display(10,3) = red;
        
        board_display(9,6) = blank;
        board_display(10,6) = orange;
        
        drawScene(my_scene, board_display, hit_marks);
        
        tic;
        point1 = getKeyboardInput(my_scene);
        
        elapsedTime = toc; 
        int_point = elapsedTime;
        %here
        if(point1 == '2') || (point1 == '5')
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
    elseif time == 242.5
        board_display(10,3) = blank;
        
        board_display(10,6) = blank;
        
        drawScene(my_scene, board_display, hit_marks);       
    end
    pause(.054)
    time = time + 0.25;
end

end

