// Circles fade out
// The Coding Train / Daniel Shiffman
// Processing Intro Series

// 1: Declare and 2: initialize the variable!
float circleX, circleY, circleSize, circleColor;
float b = 0; //blue value
void setup() {
  size(640, 360);
  pixelDensity(2); 
  circleSize = 100; // initial circle size
  circleX = 0;
  circleY = height/2;
  background(45, 197, 244);
  
}

void draw() {
  background(45, 197, 244);

  noStroke();

  //Use the variables!
  fill(252, 238, b); //circle color
  circle(circleX+20, circleY, circleSize);

  //offset the color of each circle
  fill(252, 238, b - 100); 
  circle(circleX + 120, circleY, circleSize);

  fill(252, 238, b - 200); 
  circle(circleX + 220, circleY, circleSize);

  fill(252, 238, b - 300); 
  circle(circleX + 320, circleY, circleSize);

  fill(252, 238, b - 400); 
  circle(circleX + 420, circleY, circleSize);

  fill(252, 238, b - 500); 
  circle(circleX + 520, circleY, circleSize);

  fill(252, 238, b - 600); 
  circle(circleX + 620, circleY, circleSize);
  
  //increse blue value so color approaches white (255, 255, 255)
  b = b + 7;

}
