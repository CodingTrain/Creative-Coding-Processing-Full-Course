// Bouncing ball changing speed
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float x, y, xspeed, yspeed, radius;
int maxSpeed = 10;

void setup() {
  size(640, 360);
  xspeed = 5;
  yspeed = 5;
  radius = 25;

  //Start at a random location!
  x = random(radius, width-radius);
  y = random(radius, height-radius);
}

void draw() {
  background(0);
  noStroke();

  if (x < radius || x > width - radius) {
    xspeed = constrain(random(xspeed, xspeed*2), -maxSpeed, maxSpeed) * -1;

    //abs() returns the absolute value
    if (abs(xspeed) == maxSpeed) {
      xspeed = xspeed/5;  //reset
    }
  }

  if (y < radius || y > height - radius) {
    yspeed = constrain(random(yspeed, yspeed*2), -maxSpeed, maxSpeed) * -1;

    //abs() returns the absolute value
    if (abs(yspeed) == maxSpeed) {
      yspeed = yspeed/5;  //reset
    }
  }

  circle(x, y, radius*2);

  x = x + xspeed;
  y = y + yspeed;
}
