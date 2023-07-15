// Paintbrush with conditional
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float minSize = 10;
float maxSize = 100;
float circleSize = minSize; //circle starts at min size
float speed = 1; // speed of size changing

void setup() {
  size(640, 360);
  background(240);
}

void draw() {
  circle(mouseX, mouseY, circleSize);
  stroke(240, 80);
  fill(0, 0, 255 - circleSize);


  if (circleSize >= maxSize || circleSize < minSize) {
    //when circle reaches max size, start decreasing size
    //when circle reaches min size, start increasing size
    speed = speed*-1;
  }

  //change the color based on circle size
  if (circleSize >= maxSize/2) {
    fill(255 - circleSize, 0, 0);
  }

  circleSize = circleSize + speed; //change the size of the circle
}

void mousePressed() {
  background(240);
}
