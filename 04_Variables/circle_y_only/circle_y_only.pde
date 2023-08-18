// Circle - move y only
// The Coding Train / Daniel Shiffman
// Processing Intro Series

// 1: Declare and 2: initialize the variable!
float circleX, circleY, circleSize;

void setup() {
  size(640, 360);
  pixelDensity(2);
  circleSize = 48;
  circleX = width/2;
  circleY = 3*height/4;
  background(0);
}

void mousePressed() {
  //reset when mouse is pressed!
  circleY = 3*height/4;
}

void draw() {
  background(0);

  // Use the variables!
  noStroke();
  fill(255);
  circle(circleX, circleY, circleSize);

  /*1: Gradually move circle up*/
  circleY = circleY - 1;
}
