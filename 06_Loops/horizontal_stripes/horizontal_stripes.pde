// Horizontal Stripes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup(){
  size(640, 360); 
}

void draw(){
  background(0); 
  fill(255); 
  
  fill(random(255), random(255), random(255)); 
  for(float x = 10; x < width; x += 10){
   circle(x, height/2 - 100 , 10); 
  }
  
  fill(random(255), random(255), random(255)); 
  for(float x = 10; x < width; x += 10){
   circle(x, height/2, 10); 
  }
  
  fill(random(255), random(255), random(255)); 
  for(float x = 10; x < width; x += 10){
   circle(x, height/2 + 100 , 10); 
  }
  
  noLoop();
}
