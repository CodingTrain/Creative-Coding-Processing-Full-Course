// Fruit array 2 - parse the array forward & backward
// The Coding Train / Daniel Shiffman
// Processing Intro Series
float[] fruitInventory = {50, 100, 70, 110};
String[] fruitNames = {"mango", "strawberry", "kiwi", "plum"};
int index = 0;
boolean goForward = true;

void setup() {
  size(640, 360);
}

void mousePressed() {
  //go through the array forward and backward

  if (goForward) {
    //go forward
    index = index + 1;
  } else {
    //go backward
    index = index - 1;
  }

  if (index >= fruitInventory.length-1 || index <= 0) {
    goForward = !goForward;
  }
}

void draw() {
  background(0);
  stroke(255);
  strokeWeight(24);
  strokeCap(SQUARE);
  line(width/2, height/2, width/2, height/2 - fruitInventory[index]);

  textAlign(CENTER);
  textSize(64);
  fill(255);
  text(fruitNames[index], width/2, height/2 + 64);
  text("index = " + index, width/2, height/2 + 64*2);
}
