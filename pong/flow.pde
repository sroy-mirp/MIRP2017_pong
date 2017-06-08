void rightLose() {

  if(ballX>displayWidth-ballRadius)
  leftScore++;
}


void leftLose() {
 
  if(ballX<displayWidth-ballRadius)
  rightScore++;
}
 