void updateBallVelocity() {
  float hitPosition;
  if (ballX < ballRadius+3*paddleWidth/2){
    hitPosition = paddleHit(ballY, leftPaddle);
    if (abs(hitPosition) > 1)
      leftLose();
    else {
      ballVx *= -1;
      ballVy = hitPosition*BALL_VELOCITY;
    }
  }
  if (ballX > displayWidth-ballRadius-3*paddleWidth/2){
    hitPosition = paddleHit(ballY, rightPaddle)/20;
    if (abs(hitPosition) > 1)
      rightLose();
    else {
      ballVx *= -1;
      ballVy = hitPosition*BALL_VELOCITY;
    }
  }
  if (ballY < ballRadius){
    ballY = ballRadius;
    ballVy *= -restitutionCoeff;
  }
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  if (keys[0])
    leftPaddle -= MAX_PADDLE_VELOCITY;
  if (keys[1])
    leftPaddle += MAX_PADDLE_VELOCITY;
  if (keys[2])
    rightPaddle -= MAX_PADDLE_VELOCITY;
  if (keys[3])
    rightPaddle += MAX_PADDLE_VELOCITY;
  limitPaddlePositions();
}

void limitPaddlePositions() {
  if (leftPaddle < paddleLength/2)
    leftPaddle = paddleLength/2;
  if (leftPaddle > displayHeight-paddleLength/2)
    leftPaddle = displayHeight-paddleLength/2;
  if (rightPaddle < paddleLength/2)
    leftPaddle = paddleLength/2;
  if (rightPaddle > displayHeight-paddleLength/2)
    rightPaddle = displayHeight-paddleLength/2;
}

float paddleHit(float ballPos, float paddlePos) {
  float buffer = paddleLength/2 + ballRadius;
  return (ballPos-paddlePos)/buffer;
}