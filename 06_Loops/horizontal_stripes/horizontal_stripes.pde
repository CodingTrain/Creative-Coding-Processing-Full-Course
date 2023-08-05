// Horizontal Stripes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  float h = 20;
  noStroke();
  for (float y = 0; y < height; y += h * 2) {
    rect(0, y, width, h);
  }
}
