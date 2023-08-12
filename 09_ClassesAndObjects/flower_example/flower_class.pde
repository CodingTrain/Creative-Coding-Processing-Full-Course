class Flower {
  float x, y, size, maxSize;
  color fillCol; //color of the flower
  float winkCounter = 0; //keep track of how long wink is closed

  Flower(float _x, float _y) {
    x = _x;
    y = _y;
    maxSize = 50;
    fillCol = rainbowColors[int(random(rainbowColors.length))]; //pick a random color from the array
  }

  void showFlower() {
    petals();
    showFace();
  }

  void update() {
    // oscillate the size of the flower
    size = 200 + 100 * cos(radians(frameCount));
    winkCounter++;
    if (winkCounter > 360) {
      winkCounter = 0;
    }
  }

  void petals() {
    //make the petals with thick lines
    strokeWeight(size/2);
    stroke(fillCol);
    float petalSize = size/3; //length of line
    line(x - petalSize, y - petalSize, x + petalSize, y+petalSize);
    line(x + petalSize, y - petalSize, x - petalSize, y+petalSize);
    line(x + size/2, y, x - size/2, y);
    line(x, y+ size/2, x, y - size/2);

    //flower
    noStroke();
    //decrease the brightness of the main color for the center of the flower
    fill(hue(fillCol), saturation(fillCol), brightness(fillCol) - 100);
    circle(x, y, size); //center of flower
  }

  void showFace() {
    //face
    fill(255);
    stroke(255);
    strokeWeight(size/35);
    if (winkCounter < 10) {
      line(x - size/4 - size/20, y, x - size/4 + size/20, y); //wink
    } else {
      circle(x - size/4, y, size/10); //left eye
    }
    circle(x + size/4, y, size/10); //right eye
    noFill();
    arc(x, y + size/10, size/5, size/5, 0, PI); //smile
  }
}
