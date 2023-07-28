class Bubble {
  float x, y, size;
  int bubCol;
  Bubble() {
    x = random(width);
    y = 360;
    size = 64; 
    bubCol = color(255, 192, 203); //bubble color
  }

  void update() {
    y = y - random(1, 4);
    x = x + random(-1, 1);
    
    wrapAround(); 
  }

  void show() {
    strokeWeight(4);
    fill(bubCol);
    circle(x, y, size);
  }

  void wrapAround() {
    //place bubble back at the bottom of canvas
    if (y + size/2 < 0) {
      y = height + size/2;
    }
  }
}
