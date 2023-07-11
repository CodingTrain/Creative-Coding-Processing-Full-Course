// Variables example using mouseX, mouseY, width, height 
// The Coding Train / Daniel Shiffman
// Processing Intro Series
void setup(){
  size(640, 320); 
}

void draw(){
  background(240); 
  line(mouseX, 0, mouseX, height); // vertical line
  line(0, mouseY, width, mouseY); // horizontal line
}
