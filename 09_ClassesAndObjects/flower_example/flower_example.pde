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
  pixelDensity(2);

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
