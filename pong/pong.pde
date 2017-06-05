void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
}

void draw() {
  if (keys[4]){
    resetGame();
    gameState = 0;
  }
  if (gameState == 0) {
    drawStartScreen();
  }
  if (gameState == 1) {
    drawGameScreen();
  }
  if (gameState == 2) {
    if (keys[5]) {
      gameState = 1;
      delay(200);
      keys[5] = false;
    }
  }
}

void drawStartScreen() {
  background(bgColor);
  textAlign(CENTER);
  textSize(startSize);
  fill(startColor);
  text("PONG", displayWidth/2, displayHeight/2);
  if (keys[6]){
    gameState = 1;
    resetGame();
  }
}

void drawGameScreen() {
  // codes of game screen
  if (keys[5]){
    gameState = 2;
    delay(200);
    keys[5] = false;
  }
  background(bgColor);
  updateBallVelocity();
  updateBallPosition();
  updatePaddlePositions();
  displayScores();
  drawBall();
  drawPaddles();
}

void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}

void drawPaddles() {
  fill(paddleColor);
  rectMode(CENTER);
  rect(paddleWidth, leftPaddle, paddleWidth, paddleLength, 0, paddleRadius, paddleRadius, 0);
  rect(displayWidth-paddleWidth, rightPaddle, paddleWidth, paddleLength, paddleRadius, 0, 0, paddleRadius);
}

void resetGame(){
  ballX = displayWidth/2;
  ballY = displayHeight/2;
  BALL_VELOCITY = 20;
  setRandomBallVelocity();
  delay(300);
}

void setRandomBallVelocity() {
  ballVx = BALL_VELOCITY;
  ballVy = 0;
  leftPaddle = displayHeight/2;
  rightPaddle = displayHeight/2;
}

void displayScores() {
  textAlign(CENTER);
  textSize(scoreSize);
  fill(scoreColor);
  text(leftScore, scoreX, scoreY);
  text(rightScore, displayWidth-scoreX, scoreY);
}