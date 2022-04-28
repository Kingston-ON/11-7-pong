void speed() {
  background(0);
  rectButton("(e) easy", width/2, 250, 450, 100);
  rectButton("(m) medium", width/2, 450, 450, 100);
  rectButton("(h) hard", width/2, 650, 450, 100);
  if (AI) {
    if (ekey == true) {
      va=10;
      vb=7;
      mode=GAME;
    }
    if (mkey == true) {
      va=15;
      vb=10;
      mode=GAME;
    }
    if (hkey == true) {
      va=20;
      vb=15;
      mode=GAME;
    }
  } else {
    if (ekey == true) {
      va=vb=15;
      vx=vy=random(-5,5);
      mode=GAME;
    }
    if (mkey == true) {
      va=vb=25;
      vx=vy=random(6, 15);
      mode=GAME;
    }
    if (hkey == true) {
      va=vb=33;
      vx=vy=random(15, 20);
      mode=GAME;
    }
  }
}

//easy medium hard
void speedClicks() {
  if (clickedOnRect(width/2, 250, 450, 100)) {
    vx=-2;
    vy=-2;
    va=10;
    vb=7;
    mode=GAME;
  }
  if (clickedOnRect(width/2, 450, 450, 100)) {
    vx=-4;
    vy=4;
    va=15;
    vb=10;
    mode=GAME;
  }
  if (clickedOnRect(width/2, 650, 450, 100)) {
    vx=6;
    vy=6;
    va=20;
    vb=15;
    mode=GAME;
  }
}
