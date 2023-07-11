// Random Lines
// The Coding Train / Daniel Shiffman
// Processing Intro Series
void setup() {
  size(640, 360);
  background(240);
}

void draw() {
  stroke(random(150, 240), 0, 0, 30);
  strokeWeight(random(10)); //random line thickness 
  float size = 20; 
  line(width/2 - size, height/2 - size, mouseX + size, mouseY + size);
}

void mousePressed() {
  background(240);
}
