// Paintbrush: plain
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 320);
  pixelDensity(2); 
  background(255);
}

void draw() {
  noStroke();
  fill(0);
  circle(mouseX, mouseY, 24);
}
