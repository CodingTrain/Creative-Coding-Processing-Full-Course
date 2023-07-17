// Color Palette Array
// The Coding Train / Daniel Shiffman
// Processing Intro Series

/*Another way to represent colors instead of RGB, is by using 
  hexidecimal notation (ex: #FFFFFF is the color white). Many
  color palettes found online use hex codes to denote colors. 
  You can convert RGB to Hex or vice versa using online tools. */  
color[] colorArray = new int[]{#152659, #233D8C, #52D5F2, #F27405, #FFFFFF};
//Color using RGB
//color[] colorArray = new int[]{color(21, 38, 89),color(35, 61, 140),color(82, 213, 242),color(242, 116, 5),color(255, 255, 255)};

void setup() {
  size(640, 360);
  rectMode(CENTER); 
}

void draw() {
  background(240);
  noStroke(); 
  
  float size = 100; 
  for(int i = 0; i < colorArray.length; i++){
   fill(colorArray[i]); //fill with the colors in the array
   
   //place the rectangles so they are centered based on the amount of colors/shapes
   float initialX = width/2 - size*colorArray.length/2 + size/2; 
   rect(initialX + size*i, height/2, size, size*2); 
  }
}
