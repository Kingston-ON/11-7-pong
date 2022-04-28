void options() {
  background(255, 255, 0);
  rectButton1("5", width/6, 190, 100, 100, 5);
  rectButton1("10", width/3, 190, 100, 100, 10);
  rectButton1("15", width/2, 190, 100, 100, 15);
  rectButton1("20", 2*width/3, 190, 100, 100, 20);
  rectButton1("25", 5*width/6, 190, 100, 100, 25);
  text("press (r) MAIN PAGE", width/3, 15*height/16);

  if (rkey) {
    mode=INTRO;
  }
}

void optionsClicks() {
  if (clickedOnRect(width/6, 190, 100, 100)) leftscoreLimit = rightscoreLimit=5;
  if (clickedOnRect(width/3, 190, 100, 100)) leftscoreLimit = rightscoreLimit=10;
  if (clickedOnRect(width/2, 190, 100, 100)) {
    println("!!!!");
    leftscoreLimit = rightscoreLimit=15;
  }
  if (clickedOnRect(2*width/3, 190, 100, 100)) leftscoreLimit = rightscoreLimit=20;
  if (clickedOnRect(5*width/6, 190, 100, 100)) leftscoreLimit = rightscoreLimit=25;
}
