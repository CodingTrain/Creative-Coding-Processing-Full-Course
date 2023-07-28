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
