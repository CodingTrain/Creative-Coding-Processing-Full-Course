// Circles fade out
// The Coding Train / Daniel Shiffman
// Processing Intro Series

// 1: Declare and 2: initialize the variable!
float circle1_x, circle1_y, circle2_x, circle2_y, circle3_x, circle3_y;
float circleSize, circleColor;
float bright1 = 0; //brightness value
float bright2 = 0; //brightness value
float bright3 = 0; //brightness value

void setup() {
  size(640, 360);
  pixelDensity(2); 
  circleSize = 100; // circle size
  
  circle1_x = 320;
  circle1_y = 90;
  
  circle2_x = 120;
  circle2_y = 160;
  
  circle3_x = 550;
  circle3_y = 220;
  background(45, 197, 244);
  
}

void draw() {
  background(45, 197, 244);

  noStroke();

  //Use the variables!
  fill(bright1); //circle color/brightness
  circle(circle1_x, circle1_y, circleSize);

  fill(bright2); 
  circle(circle2_x, circle2_y, circleSize);

  fill(bright3); 
  circle(circle3_x, circle3_y, circleSize);

  //increase brightness values
  bright1 = bright1 + 8;
  bright2 = bright2 + 4;
  bright3 = bright3 + 3;

}
