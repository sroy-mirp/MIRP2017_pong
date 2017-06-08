void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  // If collide with paddle, or top/bottom wall, then bounce off
  // If collides with left wall, right player gains one point
  // If collides with right wall, left player gains one point
  ballVy += gravity;
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)

}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballX > displayWidth-ballRadius){
    ballX = displayWidth-ballRadius;
    ballVx *= -1;
  }
   if (ballX <ballRadius){
    ballX = ballRadius;
    ballVx *= -1;
   }
    
    if  (ballY <ballRadius){
  ballY = ballRadius;
  ballVy *= -1;  }
  
  if (ballY> displayHeight-ballRadius){
    ballY= displayHeight-ballRadius;
    ballVy*= -1;
  }



  
     if (ballX <ballRadius+paddleWidth){
    ballX = ballRadius+paddleWidth;
    ballVx *= -1;
   }
     if (ballX >displayWidth - ballRadius-paddleWidth){
    ballX = displayWidth - ballRadius-paddleWidth;
    ballVx *= -1;
   }
  
  
  // Resolve Collisions with all other walls.

}  // Make sure the paddles don't leave the screen