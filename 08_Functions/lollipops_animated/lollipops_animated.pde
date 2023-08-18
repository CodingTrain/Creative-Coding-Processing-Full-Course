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

  for (int i = 0; i < rainbowColors.length; i++) {
    int fillCol = (rainbowColors[i]); // color of lollipop
    float size = 100; //size of lollipop
    float posX = size/2 + 15 + (width/rainbowColors.length)*i; //x position

    /*Start each lollipop at a different point in the sine function by offsetting the phase.
     When removing phase in the sine function below, all lollipops move in unison*/
    float phase = PI/rainbowColors.length * i;

    /*frameCount contains the number of frames displayed since the program started.
     It can be used with an oscillating function like sine or cosine, which returns a
     number between -1 and 1. Try multiplying frameCount by a number.*/
    float oscillate = easeIn(abs(sin(radians(frameCount) + phase)));
    float posY = height/2 + 50 - 100*oscillate; // y position

    lollipop(posX, posY, size, fillCol, oscillate);
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

void lollipop(float x, float y, float size, int fillCol, float oscillate) {
  //shaddow
  fill(0, 20);
  noStroke();

  /*use the oscillation to vary the size of the shaddow. The closer the lollipop
   is to the ground, the bigger the shaddow gets*/
  ellipse(x, height-20, (size*(1-oscillate)), (size*(1-oscillate)/2));

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
