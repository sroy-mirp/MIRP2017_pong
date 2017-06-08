void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  drawGameScreen();
  drawBall();
  drawPaddles();
updateBallVelocity();
updateBallPosition();
resolveCollisions();
detectKeys();
updatePaddlePositions();
}

void drawGameScreen() {
   background(bgColor);
   // background colore of ball
  // Update Ball Velocity and Resolve Collisions
  // Update Ball and Paddle Positions
  // Draw Ball and Paddles
  // Display Scores
}

void drawBall() {
  // Display Ball in correct position
  fill(255);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);

}

void drawPaddles() {
   // Display Left and Right paddles in correct position
      fill(255);
   rect(0,leftPaddle,paddleWidth, paddleLength);
  
  
   fill(255);
   rect(displayWidth-paddleWidth,rightPaddle,paddleWidth, paddleLength);
}
void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
  
  leftPaddle=displayHeight/2;
  rightPaddle=displayHeight/2;
  ballVx = 5;
  ballVy = 7;
}
  
void displayScores() {
  
 
}