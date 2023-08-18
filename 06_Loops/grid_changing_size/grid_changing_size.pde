// Grid changing resolution
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float spacing = 30;
float maxSpacing, minSpacing; 
float theta = 0; 
void setup() {
  size(640, 360);
  pixelDensity(2); 
  maxSpacing = 80; 
  minSpacing = 30; 
}

void draw() {
  background(0);
  fill(255); 
  strokeWeight(2); 
  
  for (float x = 0; x <= width; x+=spacing) {
    for (float y = 0; y <= height; y+=spacing) {
      rect(x, y, spacing, spacing);
    }
  }
  
  //the sin or cosine function help create oscillating motion
  theta += radians(1); 
  spacing = maxSpacing*(1+sin(theta)) + minSpacing;   
}
