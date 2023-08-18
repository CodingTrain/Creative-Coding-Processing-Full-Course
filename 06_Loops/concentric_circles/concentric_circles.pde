// Concentric circles
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup(){
  size(640, 360); 
  pixelDensity(2); 
}

void draw(){
  background(0); 
  noFill(); 
  stroke(255); 
  strokeWeight(2); 
  
  for(float radius = 10; radius < 150; radius +=10){
   circle(width/2, height/2, radius*2);  
  }
  
}
