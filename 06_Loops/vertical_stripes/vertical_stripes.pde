// Vertical Stripes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  float w = 20;
  noStroke();
  for (float x = 0; x < width; x += w * 2) {
    rect(x, 0, w, height);
  }
}
