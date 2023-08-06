// Two bubble classes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

Bubble[] bubbles = new Bubble[5];
RainDrop[] drops = new RainDrop[100];

void setup() {
  size(640, 360);
  pixelDensity(2);

  //initialize big bubbles
  for (int i = 0; i < bubbles.length; i++) {
    float x = random(width);
    float y = random(height);
    float r = random(20, 40);
    bubbles[i] = new Bubble(x, y, r);
  }

  //initialize raindrops
  for (int j = 0; j < drops.length; j++) {
    float x = random(width);
    float y = random(-height, height);
    drops[j] = new RainDrop(x, y);
  }
}

void draw() {
  background(200, 200, 255);

  //show and update bubbles
  for (int j = 0; j < bubbles.length; j++) {
    bubbles[j].update();
    bubbles[j].edges();
    bubbles[j].show();
  }

  for (int i = 0; i < drops.length; i++) {
    drops[i].update();
    drops[i].edges();
    drops[i].show();
  }
}
