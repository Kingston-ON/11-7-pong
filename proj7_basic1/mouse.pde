void mouseReleased() {
  if (mode == INTRO) introClicks();
  else if (mode==SPEED) speedClicks();
  else if (mode == OPTIONS) optionsClicks();
  else if (mode == GAME) gameClicks();
  else if (mode == PAUSE) pauseClicks();
  else if (mode == GAMEOVER) gameoverClicks();
}