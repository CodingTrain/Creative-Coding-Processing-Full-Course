class Bubble {
  float x, y, r;
  int bubCol;
  Bubble() {
    x = 320;
    y = 360;
    r = 64;
    bubCol = color(255, 192, 203); //bubble color
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
