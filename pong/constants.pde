int displayWidth=1000, displayHeight=1000;
int gameState = 0;

float BALL_VELOCITY;
float MAX_PADDLE_VELOCITY = 20;
float VELOCITY_INCREMENT = 1;

color bgColor = color(21, 21, 21);

float gravity = 0.5;
float ballX, ballY;
float ballVx = 10, ballVy = 10;
float ballRadius = 20;
color ballColor = color(239,83,80);

float leftPaddle=displayHeight/2, rightPaddle=displayHeight/2;
float paddleLength = 180, paddleWidth = 20;
color paddleColor = color(124,179,66);
float paddleRadius = paddleWidth*2;

float restitutionCoeff = 1.0;
int leftScore = 0, rightScore = 0;
int scoreSize = 150;
color scoreColor = color(179,157,219);
float scoreY = 200, scoreX = 300;

int startSize = 200;
color startColor = color(124,179,66);

char LEFT_UP = 'q', LEFT_DOWN = 'a';
char RIGHT_UP = 'o', RIGHT_DOWN = 'l';
char RESET = 'r', PAUSE = 'p', START = 's';

boolean keys[] = new boolean [8];