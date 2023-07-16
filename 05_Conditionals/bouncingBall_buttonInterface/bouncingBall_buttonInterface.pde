// Button interface / bouncing ball
// The Coding Train / Daniel Shiffman
// Processing Intro Series

//Declare ball variables
float x, y, radius, xspeed, yspeed;
color col;
boolean going = true;

//Declare button variables
float buttonSize = 160;
float padding = 40; //spacing between buttons
float colorButtonX, stopButtonX, radiusButtonX; //x pos of buttons
boolean overColorButton = false;
boolean overStopButton = false;
boolean overRadiusButton = false;

void setup() {
  size(640, 360);
  rectMode(CENTER);

  //Text properties
  textAlign(CENTER, CENTER);
  textSize(20);


  //Make the circle a random color
  col = color(random(255), random(255), random(255));

  radius = 25;
  xspeed = 3;
  yspeed = 3;

  //position of ball
  x = random(radius, width-radius);
  y = random(radius, height-radius);

  //x position of the buttons
  colorButtonX = width/2 - buttonSize - padding;
  stopButtonX = width/2;
  radiusButtonX = width/2 + buttonSize + padding;
}

void draw() {
  background(0);
  noStroke();

  if (going) {
    x = x + xspeed;
    y = y + yspeed;
  }

  if (x < radius || x > width - radius) {
    xspeed = xspeed * -1;
  }

  if (y < radius || y > height - radius) {
    yspeed = yspeed * -1;
  }


  //------------colorButton----------------
  if (mouseX > colorButtonX - buttonSize/2 && mouseX < colorButtonX + buttonSize/2
    && mouseY > height/2 - buttonSize/2 && mouseY < height/2 + buttonSize/2) {
    overColorButton = true; //the mouse is over the button
    fill(255);
    square(colorButtonX, height/2, buttonSize);
  } else {
    overColorButton = false;
  }

  //-----------start/stop button------------
  if (mouseX > stopButtonX - buttonSize/2 && mouseX < stopButtonX + buttonSize/2
    && mouseY > height/2 - buttonSize/2 && mouseY < height/2 + buttonSize/2) {
    overStopButton = true; //the mouse is over the button
    fill(255);
    square(stopButtonX, height/2, buttonSize);
  } else {
    overStopButton = false;
  }

  //------------radius button----------------
  if (mouseX > radiusButtonX - buttonSize/2 && mouseX < radiusButtonX + buttonSize/2
    && mouseY > height/2 - buttonSize/2 && mouseY < height/2 + buttonSize/2) {
    overRadiusButton = true; //the mouse is over the button
    fill(255);
    square(radiusButtonX, height/2, buttonSize);
  } else {
    overRadiusButton = false;
  }


  //draw buttons
  stroke(255);
  noFill();
  square(colorButtonX, height/2, buttonSize);
  square(stopButtonX, height/2, buttonSize);
  square(radiusButtonX, height/2, buttonSize);

  //draw button labels
  fill(255);
  text("Color", colorButtonX, height/2 + buttonSize/2 + padding/2);
  text("Start/Stop", stopButtonX, height/2 + buttonSize/2 + padding/2);
  text("Size", radiusButtonX, height/2 + buttonSize/2 + padding/2);

  //draw ball
  fill(col);
  noStroke();
  circle(x, y, radius*2);
}

void mousePressed() {
  if (overColorButton) {
    //change ball to random color
    col = color(random(255), random(255), random(255));
  }

  if (overStopButton) {
    //stop or start the ball
    going = !going;
  }

  if (overRadiusButton) {
    //change the radius
    radius = random(10, 100);
  }
}
