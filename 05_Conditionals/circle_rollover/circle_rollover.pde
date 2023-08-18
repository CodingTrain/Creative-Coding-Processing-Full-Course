// Circle rollover
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float xpos, ypos, radius;
void setup() {
  size(640, 360);
  pixelDensity(2);
  xpos = width/2;
  ypos = height/2;
  radius = 100;
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(4);
  
  //Check the distance of the mouse from center of circle
  float distance = dist(mouseX, mouseY, xpos, ypos);
  
  //If mouse is within circle, fill white
  if (distance < radius) {
    fill(255);
  } else {
    fill(175);
  }

  circle(xpos, ypos, radius*2);
}
