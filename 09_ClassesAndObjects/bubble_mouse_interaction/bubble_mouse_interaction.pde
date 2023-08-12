// Bubble Mouse Interaction
// The Coding Train / Daniel Shiffman
// Processing Intro Series

Bubble[] bubbles = new Bubble[5];

void setup() {
  size(640, 360);
  pixelDensity(2);

  //initialize big bubbles
  for (int i = 0; i < bubbles.length; i++) {
    float x = random(width);
    float y = random(height);
    float r = random(20, 40);
    bubbles[i] = new Bubble(x, y, r);
  }
}

void draw() {
  background(200, 200, 255);

  //show and update bubbles
  for (int j = 0; j < bubbles.length; j++) {
    bubbles[j].update();
    bubbles[j].edges();
    bubbles[j].show();
  }

}

void mousePressed(){
  //check each bubble to verify if mouse is over any bubble
  for (int j = 0; j < bubbles.length; j++) {
    boolean inBubble = bubbles[j].withinBubble(mouseX, mouseY); 
    if(inBubble){
     bubbles[j].changeColor();  
    }
  }
}
