// Rows conditional example
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 360);
  pixelDensity(2); 
}

void draw() {
  background(0);
  stroke(255);
  fill(175);
  rectMode(CENTER);

  //Check the mouseY position to determine what's displayed!
  if (mouseY < 120) {
    line(250, 130, 350, 220);
  } else if (mouseY < 240) {
    square(300, 180, 100);
  } else {
    circle(300, 180, 100);
  }

  stroke(127);
  strokeWeight(4);
  
  //Draw horizontal lines
  line(0, 120, width, 120);
  line(0, 240, width, 240);
}
