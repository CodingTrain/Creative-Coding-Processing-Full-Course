// Checkerboard
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 360);
  pixelDensity(2); 
}

void draw() {
  background(0);
  //stroke(255);
  float spacing = 40;
  int countX = 0; //count column number
  int countY = 0; //count row number

  for (float x = 0; x <= width; x+=spacing) {
    for (float y = 0; y <= height; y+=spacing) {
      // %(modulo) calculates the remainder when one number is divided by another.
      // If the col is even and the row is odd OR
      // If the col is odd and the row is even fill white
      if ((countX%2 == 0&&countY%2 == 1) || (countX%2 == 1&&countY%2 == 0)) {
        fill(255);
      } else {
        fill(0);
      }
      rect(x, y, spacing, spacing);
      countY+=1;
    }
    countX+=1;
  }

}
