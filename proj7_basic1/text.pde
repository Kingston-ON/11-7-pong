void shadowText(String text, float x, float y, float size) {
  textSize(size);
  fill(0);
  text(text,x-5,y+5);
  fill(#FF7C00);
  text(text,x,y);
}

void colorShadowText(String text, float x, float y, int size) {
  textSize(size);
  fill(#FC982B);
  text(text,x-5,y+5);
  fill(#F5DA83);
  text(text,x,y);
}

void rectButton (String text, float x, float y, float w, float h) {
  if (mouseX> x-w/2 && mouseX < x+w/2 && mouseY > y-h/2&& mouseY < y+h/2) {
    strokeWeight(10);
    stroke(255, 0, 0);
    fill(200);
  } else {
    strokeWeight(10);
    stroke(0);
    fill(255);
  }
  textSize(60);
  rect(x, y, w, h);
  fill(0);
  text(text, x, y);
}

void rectButton1 (String text, float x, float y, float w, float h, int mode) {
  
  if (mouseX> x-w/2 && mouseX < x+w/2 && mouseY > y-h/2&& mouseY < y+h/2 || mode==leftscoreLimit) {
    strokeWeight(10);
    stroke(255, 0, 0);
    fill(255);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }
  textSize(60);
  rect(x, y, w, h);
  fill(0);
  text(text, x, y);
}

boolean clickedOnRect(float x, float y, float w, float h) {
  return mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY <y+h/2;
}

boolean roundButton(float a, float b, float c){
  return dist(mouseX, mouseY, a, b) <= c;
}

void reset() {
  leftscore=rightscore=0;
}

void timer(){
  timer=25;
  timer=timer-1;
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
}
