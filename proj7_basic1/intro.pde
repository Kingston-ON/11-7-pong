void intro() {
  theme.play();

  background(200);
  shadowText("PONG", width/2, height/4, title);
  textSize(40);
  fill(0);
  text("press (o) OPTIONS", width/6, 15*height/16);
  textSize(50);
  noStroke();
  rectButton("(1) ONE PLAYER", 500, 590, 450, 100);
  rectButton("(2) TWO PLAYERS", width/2, 790, 450, 100);

  title=title+a;
  if (title>=400) a=-1*a;
  if (title<=10) a=-1*a;

  if (onekey == true) {
    AI=true;
    mode=SPEED;
  }
  if (okey == true) mode = OPTIONS;
  if (twokey == true) {
    AI=false;
    mode=SPEED;
  }
}

void introClicks() {
  if (clickedOnRect(500, 590, 450, 100)) {
    AI=true;
    mode=SPEED;
  }
  if (clickedOnRect(width/2, 790, 450, 100)) {
    AI=false;
    mode=SPEED;
  }
}
