// Paintbrush: random color when mouse pressed
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float r, g, b;

void setup() {
  size(640, 320);
  background(255);
  
  r = 255;
  g = 250;
  b = 150;
}

void draw() {
  fill(r, g, b);
  noStroke();
  circle(mouseX, mouseY, 24);
}

void mousePressed() {
  // background(255);
  r = random(255);
  g = random(255); 
  b = random(255); 
}
