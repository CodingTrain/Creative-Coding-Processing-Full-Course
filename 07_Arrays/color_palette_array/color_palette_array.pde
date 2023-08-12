// Color Palette Array
// The Coding Train / Daniel Shiffman
// Processing Intro Series

/*Another way to represent colors instead of RGB, is by using
 hexidecimal notation (ex: #FFFFFF is the color white). Many
 color palettes found online use hex codes to denote colors.
 You can convert RGB to Hex or vice versa using online tools. */
//color[] colorArray = new color[]{#0b6a88, #ec015a, #f89e4f, #2dc5f4, #9253a1};
//Color using RGB
color[] colorArray = new int[]{color(11, 106, 136), color(236, 1, 90), color(248, 158, 79), color(45, 197, 244), color(146, 83, 161)};

void setup() {
  size(640, 360);
  rectMode(CENTER);
  pixelDensity(2);
}

void draw() {
  background(255);
  noStroke();

  float size = 100;
  for (int i = 0; i < colorArray.length; i++) {
    fill(colorArray[i]); //fill with the colors in the array

    //place the rectangles so they are centered based on the amount of colors/shapes
    float initialX = width/2 - size*colorArray.length/2 + size/2;
    rect(initialX + size*i, height/2, size, size*2);

    /* labels */
    fill(240);
    textSize(18);
    textAlign(LEFT, CENTER);
    //convert the red value of each color to an integer
    int r = int(red(colorArray[i])); 
    int g = int(green(colorArray[i]));
    int b = int(blue(colorArray[i]));

    text("r: " + str(r), size+size*i - 20, 60 + height/2 - 18);
    text("g: " + str(g), size+size*i - 20, 60 + height/2);
    text("b: " + str(b), size+size*i - 20, 60 + height/2 + 20);
  }

  fill(0);
  textSize(14);
  text("PALETTE NAME: THE CODING RAINBOW", size - 30, height/2 + size + 10);
}
