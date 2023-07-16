// Bouncing ball with gravity
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float x, y, radius;
float velY, accY; //velocity and acceleration

void setup() {
  size(640, 360);
  radius = 25;

  velY = 3; //initial velocity
  accY = 1; //acceleration/gravity
  
  //position of ball
  x = width/2; 
  y = height/4; 
}

void draw() {
  background(0);
  noStroke();
  
  velY = velY + accY;
  y = y + velY;

  if (y < radius || y > height - radius) {
    velY = velY * -.85; //reduce the speed each time ball hits floor
    y = height - radius; 
  }
   

  circle(x, y, radius*2);
  
}
