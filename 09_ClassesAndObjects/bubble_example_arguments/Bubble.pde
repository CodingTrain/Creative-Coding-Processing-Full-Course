class Bubble {
  float x, y, r;
  color bubCol;
  Bubble(float _x, float _r) {
    x = _x;
    y = 360;
    r = _r;
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
