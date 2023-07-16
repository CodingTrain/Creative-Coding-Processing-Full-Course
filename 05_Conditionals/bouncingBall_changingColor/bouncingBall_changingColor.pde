// Bouncing ball changing color
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float x, y, xspeed, yspeed, radius;
void setup() {
  size(640, 360);
  xspeed = 2;
  yspeed = 2;
  radius = 25;

  //Start at a random location!
  x = random(radius, width-radius);
  y = random(radius, height-radius);
}

void draw() {
  background(0);
  noStroke();

  //If ball touches an edge, change the color!
  if (x < radius || x > width - radius) {
    xspeed = xspeed * -1;
    fill(random(255), random(255), random(255));
  }

  if (y < radius || y > height - radius) {
    yspeed = yspeed * -1;
    fill(random(255), random(255), random(255));
  }

  circle(x, y, radius*2);

  x = x + xspeed;
  y = y + yspeed;
}
