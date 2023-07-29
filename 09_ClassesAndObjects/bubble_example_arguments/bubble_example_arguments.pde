// Two bubbles
// The Coding Train / Daniel Shiffman
// Processing Intro Series

Bubble bub0;
Bubble bub1; //add second bubble

void setup() {
  size(640, 360);

  //initialize bubbles
  bub0 = new Bubble(100, 10);
  bub1 = new Bubble(500, 100); 
}

void draw() {
  background(255);
  
  //show and update bubbles
  bub0.update();
  bub0.edges();
  bub0.show();
  
  bub1.update(); 
  bub1.edges(); 
  bub1.show(); 
}
