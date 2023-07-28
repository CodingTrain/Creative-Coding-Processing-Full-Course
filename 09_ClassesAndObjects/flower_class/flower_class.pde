// Flower class
// The Coding Train / Daniel Shiffman
// Processing Intro Series

/*Another way to represent colors instead of RGB, is by using
 hexidecimal notation (ex: #FFFFFF is the color white). Many
 color palettes found online use hex codes to denote colors.
 You can convert RGB to Hex or vice versa using online tools. */
color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};
Flower f;

void setup() {
  size(640, 360);

  /*Use hue, saturation and brightness to specify
   color with a minimum value of 0 and maximum value of
   255.*/
  colorMode(HSB, 255);

  f = new Flower(width/2, height/2);
}

void draw() {
  background(150, 30, 255);
  f.showFlower();
  f.update();
}

class Flower {
  float x, y, size, maxSize;
  int fillCol; //color of the flower
  float winkCounter = 0; //keep track of how long wink is closed
  Flower(float _x, float _y) {
    x = _x;
    y = _y;
    size = 50;
    maxSize = 475;
    fillCol = rainbowColors[int(random(rainbowColors.length))]; //pick a random color from the array
  }

  void showFlower() {
    petals();
    showFace();
  }

  void update() {
    //oscillate the size of the flower
    size = 10 + size*easeIn(abs(sin(radians(frameCount))));

    if (size < maxSize) {
      //reset the wink counter when the flower decreases below maxSize
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
    if (size > maxSize && winkCounter < 10) {
      winkCounter++;
      line(x - size/4 - size/20, y, x - size/4 + size/20, y); //wink
    } else {
      circle(x - size/4, y, size/10); //left eye
    }
    circle(x + size/4, y, size/10); //right eye
    noFill();
    arc(x, y + size/10, size/5, size/5, 0, PI); //smile
  }
}

float easeIn(float num) {
  /*"Easing functions specify the rate of change of a parameter over time.
   Objects in real life don’t just start and stop instantly, and almost
   never move at a constant speed." Reference the following resource for
   more information about different easing functions: https://easings.net*/

  //num should be a number between 0 and 1.

  float easing = 0;
  if (num < 0.5) {
    easing = (1 - sqrt(1 - pow(2 * num, 2))) / 2;
  } else {
    easing = (sqrt(1 - pow(-2 * num + 2, 2)) + 1) / 2;
  }

  return easing;
}
