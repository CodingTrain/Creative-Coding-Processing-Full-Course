class Bubble {
  float x, y, r;
  color bubCol;
  Bubble() {
    x = random(width);
    y = height;
    r = random(32, 128);
    bubCol = color(random(100, 255), random(100, 200), 255); //bubble color
  }

  void update() {
    y = y - random(1, 4);
    x = x + random(-1, 1);
  }

  void show() {
    strokeWeight(4);
    fill(bubCol);
    circle(x, y, r*2);
  }

  void edges() {
    //place bubble back at the  bottom of canvas
    if (y < -r) {
      y = height + r/2;
    }
  }
}
