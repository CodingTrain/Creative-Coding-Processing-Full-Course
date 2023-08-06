// Alien Frown
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 360); //canvas size
  pixelDensity(2);
  colorMode(RGB, 255, 255, 255, width);
}

void draw() {
  background(240, 99, 164); //set background color
  strokeWeight(2);
  stroke(0); //outline color of the alien
  fill(252, 238, 33);

  //antennas
  rectMode(CENTER);
  rect(320 - 30, 180 - 80, 15, 75);
  rect(320 + 30, 180 - 80, 15, 75);
  circle(320 - 30, 180 - 120, 25);
  circle(320 + 30, 180 - 120, 25);

  //head
  fill(45, 197, 244);
  circle(320, 180, 150);

  //eyes
  fill(252, 238, 33);
  circle(320 - 30, 180 - 15, 40);
  circle(320 + 30, 180 - 15, 40);
  circle(320 + 30, 180 - 25, 50);
  circle(320 - 30, 180 - 25, 50);
  fill(146, 83, 161);
  circle(320 + 30 - 10 + mouseX / 30, 180 - 35, 10);
  circle(320 - 30 - 10 + mouseX / 30, 180 - 35, 10);


  //mouth
  strokeWeight(4);
  noFill();
  stroke(0, mouseX); //fade the smile out as the mouse moves left to right
  arc(320, 180+25, 100, 30, 0, PI);
  stroke(0, width-mouseX); //fade the frown in as the mouse moves left to right
  arc(320, 180+40, 100, 30, PI, TWO_PI);
}
