// Circle growing
// The Coding Train / Daniel Shiffman
// Processing Intro Series

// 1: Declare and 2: initialize the variable!
float circleX, circleY, circleSize;

void setup() {
  size(640, 360);
  pixelDensity(2);
  circleSize = 0; // initial circle size
  circleX = width/2;
  circleY = 3*height/4;
  background(45, 197, 244);
}

void draw() {
  noStroke();
  fill(255, 255, 0); //circle color

  //Use the variables!
  circle(circleX, circleY, circleSize);

  /*1: Gradually move circle up while 2: circle increases in size*/
  circleY = circleY - 1;
  circleSize = circleSize + 1;

  // Add a candle stick!
  rectMode(CENTER);
  fill(240);

  /*Adding a 5th parameter in rect rounds the corners.
   Check out the reference page for more detail!*/
  rect(width/2, height, 15, height/2, 5);
}
