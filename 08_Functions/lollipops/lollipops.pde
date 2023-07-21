// Lollipops
// The Coding Train / Daniel Shiffman
// Processing Intro Series

color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};

void setup() {
  size(640, 360);
  colorMode(HSB, 255);
}

void draw() {
  background(150, 30, 255);
  sunshine();
  cloud(110, 75, 100);
  cloud(450, 75, 50);


  for (int i = 0; i < rainbowColors.length; i++) {
    int fillCol = (rainbowColors[i]); //pick a color from the array
    float size = 100; //size of lollipop
    float posX = size; //initial x position
    float posY = height/2; 
    lollipop(posX + size*i, posY, size, fillCol);
  }

}

void cloud(float posX, float posY, float size) {
  for (int i = 0; i < 3; i++) {
    fill(255);
    noStroke();
    circle(posX + size/2*i, posY, size);
  }
}

void lollipop(float x, float y, float size, int fillCol) {
  //stem
  strokeWeight(1);
  fill(255);
  stroke(0);
  rect(x -5, y, 10, height-y-10); 
  
  //lollipop
  noStroke();
  fill(fillCol);
  circle(x, y, size);
  stroke(0);
  noFill();
  strokeWeight(1.5);
  arc(x, y-5, size, size/2, 0, PI);
  arc(x, y+5, size, size/2, 0, PI);
}

void sunshine() {
  noStroke();
  fill(35, 255, 255);
  circle(60, 60, 100);
}

void rainbow() {
  float sw = 15; // stroke weight
  strokeWeight(sw);
  noFill();

  for (int i = 0; i < rainbowColors.length; i++) {
    stroke(rainbowColors[i]); //pick a color from the array
    arc(width/2, (height + 100) - sw*i, width + sw*i, width, PI, PI*2);
  }
}
