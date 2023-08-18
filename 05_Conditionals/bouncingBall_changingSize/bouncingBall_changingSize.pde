// Bouncing ball changing size
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float x, y, xspeed, yspeed, radius, rspeed;
void setup() {
  size(640, 360);
  pixelDensity(2); 
  xspeed = 2;
  yspeed = 2;
  rspeed = 0.50; // speed at which radius changes
  radius = 25;
  
  //Start at a random location!
  x = random(radius, width-radius); 
  y = random(radius, height-radius);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  
  float minSize = 10; 
  float maxSize = 100; 

  //Check if ball bounces on edges!
  if (x < radius || x > width - radius) {
    xspeed = xspeed * -1;
    rspeed = rspeed * -1; 
  }

  if (y < radius || y > height - radius) {
    yspeed = yspeed * -1;
    rspeed = rspeed * -1; 
  }

  circle(x, y, radius*2);
  
  x = x + xspeed; 
  y = y + yspeed; 
  //The constrain function constrains a value to not exceed a minimum and maximum value.
  radius = constrain(radius + rspeed, minSize, maxSize); 
}
