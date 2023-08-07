// Add elements using ArrayList
// The Coding Train / Daniel Shiffman
// Processing Intro Series

/*Another way to represent colors instead of RGB, is by using 
  hexidecimal notation (ex: #FFFFFF is the color white). Many
  color palettes found online use hex codes to denote colors. 
  You can convert RGB to Hex or vice versa using online tools. */
color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};

ArrayList<Confetti> clusters = new ArrayList<Confetti>(); //create ArrayList
boolean partyTime = false;

void setup() {
  size(640, 360);
  pixelDensity(2);
}

void mousePressed() {
  partyTime = true; 
  
  //each time the mouse is pressed, add 100 more confetti
  for (int i = 0; i < 100; i++) {
    clusters.add(new Confetti(mouseX, mouseY)); 
  }  
}

void draw() {
  background(255);
  if (partyTime) {
    for (Confetti c : clusters) {
      c.show();
      c.update();
    }
  }
}
