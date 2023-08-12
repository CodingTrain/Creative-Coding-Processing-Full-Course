// Rainbow, Unicorn, Puppy Functions
// The Coding Train / Daniel Shiffman
// Processing Intro Series

color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};


void setup() {
  size(640, 360);
  pixelDensity(2);
  colorMode(HSB, 255);
  rectMode(CENTER);
}

void draw() {
  background(150, 30, 255);
  rainbow();
  unicorn();
  noLoop();
}

void rainbow() {
  float sw = 15;
  strokeWeight(sw);
  noFill();

  for (int i = 0; i < rainbowColors.length; i++) {
    stroke(rainbowColors[i]); //pick a color from the array
    arc(width/2, (height + 100) - sw*i, width + sw*i, width, PI, PI*2);
  }
}

void unicorn() {
  float sw = 3; //strokeWeight
  float posX = width/2 - 110;
  float posY = height/2 + 50;
  stroke(0);
  strokeWeight(sw);
  float triSize = 50; //size of triangle 
  //pick a random horn color
  fill(rainbowColors[int(random(rainbowColors.length))]);
  triangle(posX - triSize/2, posY - 100, posX + triSize, posY - 90, posX+triSize/2, posY -100 - triSize*2);
  
  //unicorn "mane" 
  for (int i = 0; i < 7; i++) {
    fill(130, 100, 255);
    circle((posX - 40) - 10*i, posY - 50 + 40*i, 100);
  }

  //head
  fill(255);
  rect(posX, posY, 150, 215, 100);

  //nose
  fill(0, 120, 255);
  ellipse(posX, posY+60, 150, 110);

  // nostrils 
  fill(0, 50, 255);
  ellipse(posX + 10, posY + 60, 10, 10);
  ellipse(posX - 10, posY + 60, 10, 10);

  //eyes 
  fill(0);
  ellipse(posX, posY - 50, 5, 5);
  ellipse(posX + 10, posY - 50, 8, 8);
}

void puppy() {
  float sw = 3;
  float posX = width/2 + 110;
  float posY = height/2 + 50;
  stroke(0);
  strokeWeight(sw);

  //ears
  for (float i = 0; i < 3; i+=0.3) {
    fill(15, 150, 100);
    noStroke();
    circle((posX - 50) - 10*i, posY - 55 + 40*i, 100);
    circle((posX + 50) + 10*i, posY - 55 + 40*i, 100);
  }
  
  //head
  stroke(0);
  fill(15, 75, 200);
  rect(posX, posY, 150, 215, 100);
  
  //nose
  fill(35, 75, 255);
  ellipse(posX, posY+60, 150, 110);

  //mouth
  fill(0);
  ellipse(posX, posY+25, 70, 35);
  line(posX, posY+25, posX, posY+75);
  noFill();
  arc(posX - 20, posY+75, 40, 25, 0, PI);
  arc(posX + 20, posY+75, 40, 25, 0, PI);

  //eyes
  fill(0);
  ellipse(posX - 25, posY - 25, 20, 20);
  ellipse(posX + 25, posY - 25, 20, 20);

  //eyebrows
  noFill();
  arc(posX - 25, posY - 50, 40, 25, PI, 2*PI - PI/4);
  arc(posX + 25, posY - 50, 40, 25, PI + PI/4, 2*PI);
}
