// Bubble class
// The Coding Train / Daniel Shiffman
// Processing Intro Series

Bubble bub1;
Bubble bub2; //add second bubble

void setup() {
  size(640, 360);

  //initialize bubbles
  bub1 = new Bubble();
  bub2 = new Bubble(); 
}

void draw() {
  background(255);
  
  //show and update bubbles
  bub1.update();
  bub1.show();
  
  bub2.update(); 
  bub2.show(); 
}
