// Confetti Party!!! with rotate
// The Coding Train / Daniel Shiffman
// Processing Intro Series

/*Another way to represent colors instead of RGB, is by using 
  hexidecimal notation (ex: #FFFFFF is the color white). Many
  color palettes found online use hex codes to denote colors. 
  You can convert RGB to Hex or vice versa using online tools. */
color[] rainbowColors = new int[]{#9A56FF, #527AF2, #F2B807, #F28907, #F2220F};

Confetti[] confetti = new Confetti[100];
boolean partyTime = false;

void setup() {
  size(640, 360);

  for (int i = 0; i < confetti.length; i++) {
    confetti[i] = new Confetti();
  }
}

void mousePressed() {
  partyTime = true; 
  for (Confetti c : confetti) {
    c.burst(mouseX, mouseY);
  }
}

void draw() {
  background(240);
  if (partyTime) {
    for (Confetti c : confetti) {
      c.show();
      c.update();
    }
  }
}
