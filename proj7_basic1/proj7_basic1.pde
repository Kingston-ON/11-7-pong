import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//color
color lightpurple = #BF9A82;
color brown = #45201E;
color pink = #FF0f53;
color green = #558A67;
//modelframework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTIONS = 5;
final int SPEED = 6;

//entite variables
float leftx, lefty, leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vx, vy;
float va, vb;
//scoring
int leftscore, rightscore, timer;
int leftscoreLimit, rightscoreLimit;
boolean AI;
boolean isPaused = false;

//keyboard varibles
boolean wkey, skey, upkey, downkey, onekey, twokey, pkey, okey, rkey, esckey, ekey, mkey, hkey;

//size
int title=200;
int a=5;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover;

void setup() {
  leftscoreLimit=rightscoreLimit=5;

  size(1000, 950);
  mode = INTRO;
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //initialize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  //initialize ball
  ballx = width/2;
  bally =  height/2;
  balld = 100;
  vx=random(-3, 3);
  vy=random(-3, 3);

  //initialize score
  rightscore=leftscore=0;
  timer=40;
  leftscoreLimit=rightscoreLimit=5;

  //initialize keyboard vars
  wkey = skey = upkey = downkey = onekey = twokey = pkey = okey= rkey = esckey = ekey = mkey = hkey = false;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("mario_bros_theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw() {
  if (mode == INTRO) intro();
  else if (mode == OPTIONS) options();
  else if (mode == SPEED) speed();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
  else println("Mode error: " + mode);
}
