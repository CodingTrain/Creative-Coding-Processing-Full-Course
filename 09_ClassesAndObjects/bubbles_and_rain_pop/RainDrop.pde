class RainDrop {
  float x, y, r;
  float yspeed;

  color dropColor;
  RainDrop(float _x, float _y) {
    x = _x;
    y = _y;
    yspeed = 0;
    r = 10;
    dropColor = color(0, 0, 255);
  }

  void update() {
    y = y + yspeed;
    yspeed += 0.1;
  }

  void show() {
    noStroke();
    fill(dropColor);
    for (float i = 1; i < 10; i++) {
      circle(x, y-i, r-i); //bubble
    }
  }

  void edges() {
    //place bubble back at the  bottom of canvas
    if (y > height + r) {
      y = -height;
      yspeed = 0;
    }
  }
}
