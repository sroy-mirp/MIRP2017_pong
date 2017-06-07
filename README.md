**

Build your own PONG!
---------
**Introduction**

Pong is one of the first electronic games created, based on the real-life game of table tennis. There are two players, each represented by a paddle on a rectangular screen. Each player controls their paddle by moving it up or down to hit the ball across the screen. If a player misses the ball with their paddle, the other player scores a point.

So the basic rules of the game are:

 1. There is a background that shows the game board
 2. There are two paddles on the left and right sides that move up and down
 3. There is a ball that moves across the screen and bounces off the paddles
 4. When a ball falls off the screen on the left or right sides (the player missed the ball), the other player scores a point.
 5. There is a score that represents the points each player scored.

You can play an online version of this game [here](http://www.ponggame.org) to get a better intuition for how the game works. In this lab, you will be building your own version of Pong!

We provide you an outline of code for you to start this lab, but you will be writing most of the code that creates this game! This code skeleton will provide you many constants that will make your life easier, so be sure to use these constants in your code! We also take care of key handling for you,  and you can read more about this in the *Key Handling* section below.

In addition to this README file, you will also find many instructions and hints in the code we give you! Be sure to **read the comments** carefully to determine what needs to be done inside each function!

**Set Up**
You will be completing this lab in **Processing** and start with the 5 skeleton files we provide you inside the `pong` folder. These files are:
> **FILES**
> - **pong.pde**: This is the main game file that you will be editing.
> - **constants.pde**: This file contains constants that will be useful to you! Make sure to read through this file before you begin, and you may need to 
> - **flow.pde**: This is a simple file that controls the flow of the game. You will update this code based on what should happen when a point is scored.
> - **key_handling.pde**: This file is for your convenience and does not need to be edited! It takes care of key handling.
> - **physics.pde**: In this file, you will write code that determines how the ball's position and velocity will be updated as well as the position of the paddle using the physics you learned in class!

Note that ".pde" at the end of the file indicates that the file should be opened using Processing.

**How to get these files:**
In order to download these files, you will `fork` this repository as you learned in class! Make sure you **DO NOT CLONE** this repository directly! Once you have forked the respoitory into your own Github account, you can then clone it onto your computer to work on the code. Make sure you are logged in to your own Github account while you do this!

<i class="icon-folder-open"></i> **pong.pde**
Just like any main Processing file, the functions that will be run are
 `void setup()` and `void draw()`. These functions, however, will mainly call other functions that you write

FUNCTION: `void setup()` is provided to you, which calls `resetGame()` to start a new game. **You** will write what happens inside `resetGame()` at the bottom of the file. Remember that `setup()` only gets called ONCE at the start of the program.

FUNCTION: `void draw()`is given to you, but simply calls `drawGameScreen()` which you will be writing. Remember that `draw()` gets called many times per second, and this is how the game screen will be refreshed each time something changes.
 
**Step 1: Create a ball and its properties**
 The ball will be represented as a circle with the radius specified in the constants file. The ball also has a `position` and `velocity` throughout the game. 
 
 - Write the function `drawBall()` to display the ball in the correct position. the ball and give it a velocity.
 - To draw the ball, you are given the ball radius and color ballRadius = 10 and ballColor = 255 among the defined constants.
 - Give it a velocity BALL_VELOCITY among the constants. 

**Step 2:**
Now it's time to do collisions detection, so the ball bounces off the four walls (no gravity).
In the void updateBallVelocity() function, write your code to detect ball collisions with walls or paddles:
  
 - If collide with paddle, or top/bottom wall, then bounce off
 - If collides with left wall, right player gains one point
 - If collides with right wall, left player gains one point
 
**Step 3:**
Now try to write your code for the drawPaddles() function to display Left and Right paddles in correct position.
To do this you will use the Paddle parameters defined among the constants:  paddleLength = 180,  paddleWidth = 20 and paddleColor = 255.

**Step 4:**
This is the time to write your code to make one of the paddles move.

 - Write you code to make one of the paddles go up and down. To do this fill out the updatePaddlePositions() function.
 -  Based on the keys pressedd, move the paddles (update Y position)

**Step 5:**
Now try to modify your current code for the updatePaddlePositions() to restrict motion of paddles to make sure the paddles don't leave the screen.
Here you will need the paddleLength parameter defined in the constants.
**Step 6:**
To make things actually exciting now, make both paddles move independently

**Step 7:**
Again now you want to write your code to detect collision of the ball with paddle. To do this you must write a code that detects a large difference between the x-postion of the ball and the paddles as a loss, and a small difference as a collision. 

**Step 8:**
If collision happens, you must add to your code a formula to ensure proper reflection of the ball from paddle. 
Remember as we mentioned in lecture, reflection will involve switching the sign of the velocity. This can be done by using ballVx *= -1

**Step 9:**
Detect losing as hitting the left or right wall.
To do this write your code in the rightLose() and leftLose() functions in the flow.pde

**Step 10:**
Write your code for the displayScores() function to display Left and Right player scores on the screen.

**Step 11:**
Have a start screen and/or end screen

**Step 12:**
Now write the code for the resetGame() function.
This function must:

 - Reset Ball and Paddle Positions
 - Reset Ball Velocity

The Reset Button must take the player back to start screen.

Hint: you might find it usefl to define a setRandomBallVelocity() fucntion and use it in your resetGame() function. 
setRandomBallVelocity() must basically set positions for ball and paddle, in addition to ball velocity.

**Step 13:**
Pause button

**Key Handling**

You are given defined keyboard keys that the player will use in the game. They will do their assigned functions only when pressed.

 - In order to control the Left Paddle, the following keys can be used:

	LEFT_UP = 'q'                  LEFT_DOWN = 'a'

 - Controls for the Right Paddle
 
	RIGHT_UP = 'o'        RIGHT_DOWN = 'l'

 - Game Controls
 
	RESET = 'r'        PAUSE = 'p'           START = 's'