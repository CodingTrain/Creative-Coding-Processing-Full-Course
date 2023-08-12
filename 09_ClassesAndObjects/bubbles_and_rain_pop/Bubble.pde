class Bubble {
  float x, y, r;
  color bubCol;
  float growRate, initialSize, animationCount, acc;
  boolean popBub;
  
  Bubble(float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
    initialSize = r;
    growRate = random(0.1, 0.3); //grow size of buuble
    acc = random(0.0005, 0.01);  //acceleration of growRate
    popBub = false;
    animationCount = 0; //to track length of pop animation
    bubCol = color(random(100, 255), 0, random(100, 255), 200); //bubble color
  }

  void update() {
    y = y - random(1, 4);
    x = x + random(-1, 1);
    r = r + growRate;
    growRate += acc;
  }

  void show() {
    popBub = checkSize();
    float duration = 0.1; //pop animation length

    if (popBub) {
      animatePop();
      resetPop(duration);
    } else {
      strokeWeight(2);
      stroke(255);
      fill(bubCol);
      circle(x, y, r*2); //bubble
      strokeWeight(r/5);
      arc(x, y, r, r, PI, radians(250)); //highlight
    }
  }

  void animatePop() {
    strokeWeight(10);
    stroke(255);
    float numLines = 5;
    float lineLength = 20;

    for (float angle = 0; angle < 2*PI; angle += 2*PI/numLines) {
      /*The equation for cartesian (x,y) coordinates to polar (r, theta/angle) coordinates
       is x = r*cos(theta/angle), y = r*sin(theta/angle).
       For more resources, refer to the polar coordinates chapter in
       The Nature of Code track on thecodingtrain.com/tracks*/

      //start the line at the edge of the bubble and extend by a length of 20

      float x1 = x + r*cos(angle);
      float y1 = y + r*sin(angle);

      float x2 = x + (r+lineLength)*cos(angle);
      float y2 = y + (r+lineLength)*sin(angle);

      line(x1, y1, x2, y2);

      textSize(24);
      textAlign(CENTER, CENTER);
      fill(255);
      text("POP", x, y);
    }
    animationCount+=1; //increment animation count
  }

  void edges() {
    //place bubble back at the  bottom of canvas
    if (y < -r) {
      y = height + r/2;
    }
  }

  void resetPop(float duration) {
    if (animationCount > duration*60) {
      y = height + r/2; //start at the bottom
      popBub = false; //do not pop bubble
      r = initialSize; //reset to original size
      animationCount = 0; //reset animationCount
      growRate = 0; //reset growRate
      acc = random(0.0005, 0.02); //reset acceleration
    }
  }

  boolean checkSize() {
    //return true if the size of the bubble is greater than twice it's initial size
    return r > initialSize*2;
  }
}
