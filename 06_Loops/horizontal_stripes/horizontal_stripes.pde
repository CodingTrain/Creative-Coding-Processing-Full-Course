// Horizontal Stripes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float h = 20;

void setup() {
  size(640, 360);
  pixelDensity(2); 
}

void draw() {
  background(0);
  fill(255);
  noStroke();
  for (float y = 0; y < height; y += h * 2) {
    rect(0, y, width, h);
  }
}
