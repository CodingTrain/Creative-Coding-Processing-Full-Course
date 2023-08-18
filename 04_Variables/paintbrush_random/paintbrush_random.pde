// Paintbrush: random color/random size
// The Coding Train / Daniel Shiffman
// Processing Intro Series
void setup(){
  size(640, 320); 
  pixelDensity(2); 
  background(255); 
}

void draw(){
  float randRed = random(255); 
  float randBlue = random(50, 150); 
  float randGreen = random(150, 255); 
  
  fill(randRed, randBlue, randGreen); 
  noStroke(); 
  circle(mouseX, mouseY, random(10, 50)); 
}

void mousePressed(){
 background(255);  
}
