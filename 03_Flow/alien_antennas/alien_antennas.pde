// Alien
// The Coding Train / Daniel Shiffman
// Processing Intro Series
void setup() {
  size(640, 360); //canvas size
  pixelDensity(2);
  //colorMode(RGB, width, height, 255);
}

void draw() {
  background(240, 99, 164); //set background color
  stroke(0); //outline color of the alien
  strokeWeight(2);
  fill(252, 238, 33);

  //antennas
  /*Wiggle antennas left to right with the use of sin() function
    Check out the reference page for more detail!*/
  rectMode(CENTER);
  rect(320 - 30 + mouseX / 10, 180 - 80, 15, 75); 
  rect(320 + 30 - mouseX / 10, 180 - 80, 15, 75);
  circle(320 - 30 + mouseX / 10, 180 - 120, 25);
  circle(320 + 30 - mouseX / 10, 180 - 120, 25);

  //head
  fill(45, 197, 244);
  circle(320, 180, 150);

  //eyes
  fill(252, 238, 33);
  circle(320 - 30, 180 - 15, 40);
  circle(320 + 30, 180 - 15, 40);
  circle(320 + 30, 180 - 25, 50);
  circle(320 - 30, 180 - 25, 50);
  fill(146, 83, 161);
  circle(320 + 30 - 10 + mouseX / 30, 180 - 35, 10);
  circle(320 - 30 - 10 + mouseX / 30, 180 - 35, 10);


  //mouth
  noFill();
  arc(320, 180+10, 25, 25, 0, PI);
}
