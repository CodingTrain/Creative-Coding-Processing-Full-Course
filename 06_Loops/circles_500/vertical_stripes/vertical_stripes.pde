// Vertical Stripes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup(){
  size(640, 360); 
}

void draw(){
  background(0); 
  fill(255); 
  
  fill(random(255), random(255), random(255)); 
  for(float y = 10; y < height; y += 10){
   circle(width/2 - 200, y , 10); 
  }
  
  fill(random(255), random(255), random(255)); 
  for(float y = 10; y < height; y += 10){
   circle(width/2 - 100, y , 10); 
  }
  
  fill(random(255), random(255), random(255)); 
  for(float y = 10; y < height; y += 10){
   circle(width/2, y, 10); 
  }
  
  fill(random(255), random(255), random(255)); 
  for(float y = 10; y < height; y += 10){
   circle(width/2 + 100, y , 10); 
  }
  
  fill(random(255), random(255), random(255)); 
  for(float y = 10; y < height; y += 10){
   circle(width/2 + 200, y , 10); 
  }
  
  noLoop();
}
