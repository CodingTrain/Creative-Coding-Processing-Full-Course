class SmallBubble {
  float x, y, r;
  color bubCol;
  SmallBubble(float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
    bubCol = color(0, 0, 185); //bubble color
  }

  void update() {
    y = y - random(1, 3);
    x = x + random(-1, 1);
  }

  void show() {
    strokeWeight(2);
    stroke(255);
    noStroke();
    fill(bubCol);
    circle(x, y, r*2); //bubble

    stroke(255);
    strokeWeight(r/5);
    arc(x, y, r, r, PI, radians(250)); //highlight
  }

  void edges() {
    //place bubble back at the  bottom of canvas
    if (y < -r) {
      y = height + r/2;
    }
  }

}
