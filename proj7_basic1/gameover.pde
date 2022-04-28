void gameover() {
  theme.pause();
  textSize(30);
  rectButton("(p) PLAY AGAIN", width/2, 650, 450, 100);
  rectButton("(r) MAIN MENU", width/2, 790, 450, 100);
  if (rightscore == rightscoreLimit) {
    fill(0,255,0);
    text("RIGHT WINS", 3*width/4, 200);
  
  }
  if (leftscore == leftscoreLimit) {
    fill(255, 0, 0);
    text("LEFT WINS", width/4, 200);
  }
  if (pkey) {
    reset();
    mode=GAME;
  }
  if (rkey) {
    reset();
    mode=INTRO;
  }
}

void gameoverClicks() {
  if (clickedOnRect(width/2, 650, 450, 100)) {
    reset();
    mode=GAME;
    gameover.pause();
    theme.rewind();
    theme.play();
  }
  if (clickedOnRect(width/2, 790, 450, 100)) {
    reset();
    mode=INTRO;
    gameover.pause();
    theme.rewind();
    theme.play();
  }
}
