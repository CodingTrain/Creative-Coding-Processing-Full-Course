// Four sections
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 360);
  pixelDensity(2); 
}

void draw() {
  background(0);
  stroke(255);
  fill(175);
  rectMode(CENTER);

  //Check the mouseY position to determine what's displayed!
  //Draw each shape within the row that evaluates to true
  if (mouseY < 90) {
    line(250, 45-35, 350, 45+35);
  } else if (mouseY < 180) {
    square(300, 135, 70);
  } else if(mouseY < 270){
    rect(300, 225, 150, 35, 5); 
  }else {
    circle(300, 315, 70);
  }

  stroke(127);
  strokeWeight(4);
  
  //Draw horizontal lines
  line(0, 90, width, 90);
  line(0, 180, width, 180);
  line(0, 270, width, 270);
}
