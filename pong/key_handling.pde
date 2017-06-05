void keyPressed() {
  if (key == LEFT_UP)       keys[0] = true;
  if (key == LEFT_DOWN)     keys[1] = true;
  if (key == RIGHT_UP)      keys[2] = true;
  if (key == RIGHT_DOWN)    keys[3] = true;
  if (key == RESET)         keys[4] = true;
  if (key == PAUSE)         keys[5] = true;
  if (key == START)         keys[6] = true;
}

void keyReleased() {
  if (key == LEFT_UP)       keys[0] = false;
  if (key == LEFT_DOWN)     keys[1] = false;
  if (key == RIGHT_UP)      keys[2] = false;
  if (key == RIGHT_DOWN)    keys[3] = false;
  if (key == RESET)         keys[4] = false;
  if (key == PAUSE)         keys[5] = false;
  if (key == START)         keys[6] = false;
}