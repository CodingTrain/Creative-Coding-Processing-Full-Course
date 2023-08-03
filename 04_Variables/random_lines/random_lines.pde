// Random Lines
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float x1, y1, x2, y2;

void setup() {
  size(640, 360);
  background(0);
}

void draw() {
  stroke(random(150, 255), random(100, 250), 0, 200);
  strokeWeight(random(1, 4));
  x1 = random(width);
  y1 = random(height);
  x2 = x1 + random(-50, 50);
  y2 = y1 + random(-50, 50);
  line(x1, y1, x2, y2);
}
