// Candle (circle fade out)
// The Coding Train / Daniel Shiffman
// Processing Intro Series

// 1: Declare and 2: initialize the variable!
float circleX, circleY, circleSize, circleColor;

void setup() {
  size(640, 360);
  circleSize = 0; // initial circle size
  circleX = width/2; 
  circleY = height/2;
  circleColor = 255;
  background(0);
}

void mousePressed() {
  //reset when mouse is pressed!
  circleSize = 0;
  circleX = width/2;
  circleY = height/2;
  circleColor = 255;
}

void draw() {
  noStroke();
  fill(circleColor, circleColor, 0); //circle color

  //Use the variables!
  circle(circleX, circleY, circleSize);

  /*1: Gradually move circle up while 2: circle increases in size and
    3: circleColor decreases to 0 (fade out)*/
  circleY = circleY - 3;
  circleSize = circleSize + 5;
  circleColor = circleColor - 1;

  // Add a candle stick!
  rectMode(CENTER);
  fill(240);

  /*Adding a 4th parameter in rect rounds the corners.
   Check out the reference page for more detail!*/
  rect(width/2, height, 30, height, 5);
}
