void keyPressed() {
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'o' || key == 'O') okey = true;
  if (key == 'r' || key == 'R') rkey = true;
  if (key == 'e' || key == 'E') ekey = true;
  if (key == 'm' || key == 'M') mkey = true;
  if (key == 'h' || key == 'H') hkey = true;
  if (key == 'p' || key == 'P') {
    pkey = true;
    isPaused = !isPaused;
  }
  if (key == '1') onekey = true;
  if (key == '2') twokey = true;
  if (keyCode == UP) upkey = true;
  if (keyCode == ESC) esckey = true;
  if (keyCode == DOWN) downkey = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'p' || key == 'P') pkey = false;
  if (key == 'o' || key == 'O') okey = false;
  if (key == 'r' || key == 'R') rkey = false;
  if (key == 'e' || key == 'E') ekey = false;
  if (key == 'm' || key == 'M') mkey = false;
  if (key == 'h' || key == 'H') hkey = false;
  if (key == '1') onekey = false;
  if (key == '2') twokey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == ESC) esckey = false;
}
