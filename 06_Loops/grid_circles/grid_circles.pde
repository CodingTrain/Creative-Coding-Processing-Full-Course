// Grid of circles
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float spacing = 40; 
void setup() {
  size(640, 360);
  pixelDensity(2); 
}

void draw() {
  background(0);
  fill(255); 
  noStroke(); 
  
  for (float x = 0; x <= width; x+=spacing) {
    for (float y = 0; y <= height; y+=spacing) {
      circle(x + spacing/2, y + spacing/2, spacing);
    }
  }
 
}
