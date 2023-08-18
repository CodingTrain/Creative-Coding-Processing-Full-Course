// Paintbrush with conditional
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float minSize = 10;
float maxSize = 100;
float circleSize = minSize; //circle starts at min size
float speed = 1; // speed of size changing

void setup() {
  size(640, 360);
  pixelDensity(2);
  background(240);
}

void draw() {
  circle(mouseX, mouseY, circleSize);
  stroke(240, 80);
  fill(236, 1, 90);

  //reset to minimum size once size > maxSize
  if (circleSize >= maxSize) {
    circleSize = minSize;
  }

  if (circleSize >= maxSize/2) {
    fill(112, 50, 126);
  }

  circleSize = circleSize + speed; //change the size of the circle
}

void mousePressed() {
  background(240);
}
