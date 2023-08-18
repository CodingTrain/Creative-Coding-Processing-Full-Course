// Ball turning around

float x = 0;
float speed = 4;
void setup() {
  size(640, 360);
  pixelDensity(2);
}

void draw() {
  background(0);
  noStroke();
  fill(255);
  
  circle(x, height/2, 48);
  
  x = x + speed;
  
  if (x > width) {
    speed = -4;
  }

}
