void game() {
  background(brown);
  if (pkey) mode = PAUSE;

  //music
  theme.play();

  //center line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //paddles
  fill(pink);
  circle(leftx, lefty, leftd);
  fill(green);
  circle(rightx, righty, rightd);

  //ball
  fill(lightpurple);
  circle(ballx, bally, balld);

  //move paddles
  //if (lefty>0) if (wkey == true) lefty = lefty - 10;
  //if (lefty< height) if (skey == true) lefty = lefty + 10;
  //if (righty>0) if (upkey == true) righty = righty - 10;
  //if (righty< height) if (downkey == true) righty = righty + 10;

  //paddle
  lefty=max(lefty, 0);
  lefty=min(lefty, height);
  righty=max(righty, 0);
  righty=min(righty, height);
  if (upkey == true) righty = righty - 10;
  if (downkey == true) righty = righty + 10;
  if (!AI) {
    if (wkey == true) lefty = lefty - 10;
    if (skey == true) lefty = lefty + 10;
  } else {
    if (bally>lefty) lefty=lefty+vb;
    if (bally<lefty) lefty=lefty-vb;
  }

  /*//move paddles
   if (righty>-1*rightd/8) if (upkey) righty = righty - va;
   if (righty< height+1*rightd/8) if (downkey) righty = righty + va;
   
   if (!AI) {
   if (lefty>-1*leftd/8) if (wkey) lefty = lefty - va;
   if (lefty< height+1*leftd/8) if (skey) lefty = lefty + va;
   } else {
   if (bally>lefty && lefty>-1*leftd/8) lefty=lefty+vb;
   if (bally<lefty && lefty< height+1*leftd/8) lefty=lefty-vb;
   }
   */
  //righty = map(righty, 0, height, rightd/2, height-rightd/2);


  //MOVE BALLS
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  //scoring
  if (ballx < 0) {
    rightscore++;
    coin.play();
    coin.rewind();
    coin.play();
    ballx = width/2;
    bally = height/2;
    timer();
  }

  if (ballx > width) {
    leftscore++;
    coin.play();
    coin.rewind();
    coin.play();
    ballx = width/2;
    bally = height/2;
    timer();
  }

  //boncing
  // if (bally <= balld/2 || bally >= height-balld/2) vy = vy * -1;
  //if(ballx<=balld || ballx>=height-balld)
  bally=max(bally, balld/2);
  bally=min(bally, height-balld/2);
  if (bally<=balld/2 || bally>=height-balld/2) vy=-1*vy;
  if (dist(ballx, bally, rightx, righty) <= balld/2 + rightd/2) {
    vx = (ballx - rightx)/10;
    vy = (bally - righty)/10;
  }

  if (dist(leftx, lefty, ballx, bally) <= leftd/2+balld/2) {
    vx = (ballx - leftx)/10;
    vy = (bally - lefty)/10;
  }

  if (isPaused) {
    mode = PAUSE;
  }


  //scoreboard
  textSize(50);
  fill(pink);
  text(leftscore, width/4, 100);
  fill(green);
  text(rightscore, 3*width/4, 100);
  timer = timer-1;
  if (leftscore>=leftscoreLimit) {
    mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
  }
  if (rightscore>=rightscoreLimit) {
    mode = GAMEOVER;
    gameover.rewind();
    gameover.play();
  }
}

void gameClicks() {
  mode=PAUSE;
}
