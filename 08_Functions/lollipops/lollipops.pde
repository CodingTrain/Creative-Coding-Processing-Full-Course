// Lollipops
// The Coding Train / Daniel Shiffman
// Processing Intro Series

/*Another way to represent colors instead of RGB, is by using
 hexidecimal notation (ex: #FFFFFF is the color white). Many
 color palettes found online use hex codes to denote colors.
 You can convert RGB to Hex or vice versa using online tools. */
color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};

void setup() {
  size(640, 360);
  pixelDensity(2);

  /*Use hue, saturation and brightness to specify
   color with a minimum value of 0 and maximum value of
   255.*/
  colorMode(HSB, 255);
}

void draw() {
  background(150, 30, 255);

  sunshine();
  cloud(110, 75, 100);
  cloud(450, 95, 50);
  lollipop(100, 180, 100, rainbowColors[0]);
  lollipop(210, 180, 150, rainbowColors[1]);
  lollipop(320, 180, 70, rainbowColors[2]);
  lollipop(430, 180, 120, rainbowColors[3]);
  lollipop(540, 180, 80, rainbowColors[4]);
}

void lollipop(float x, float y, float size, int fillCol) {

  //stem
  strokeWeight(1);
  fill(255);
  noStroke();
  rect(x -5, y, 10, height-y-20);

  //lollipop
  noStroke();
  fill(fillCol);
  circle(x, y, size);
  float rectSize = size + 10; //lollipop center shape
  rect(x-rectSize/2, y-rectSize/8, rectSize, rectSize/4, 5);
  stroke(hue(fillCol), saturation(fillCol) - 100, brightness(fillCol)); //highlight
  line(x - rectSize/2 + rectSize/8, y-rectSize/8, x+rectSize/2 - rectSize/8, y-rectSize/8);
  stroke(hue(fillCol), saturation(fillCol), brightness(fillCol) - 100); //shaddow
  line(x - rectSize/2 + rectSize/8, y+rectSize/8, x+rectSize/2 - rectSize/8, y+rectSize/8);

  //white arc for glossy effect
  noFill();
  strokeWeight(5);
  stroke(255);
  arc(x, y, size - 20, size - 20, PI, PI+PI/3);
}

void sunshine() {
  noStroke();
  fill(35, 255, 255);
  circle(60, 60, 100);
}

void cloud(float posX, float posY, float size) {
  for (int i = 0; i < 3; i++) {
    fill(255);
    noStroke();
    circle(posX + size/2*i, posY, size);
  }
}
