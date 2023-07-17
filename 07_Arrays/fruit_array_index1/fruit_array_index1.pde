// Fruit array 1 - parse the array and reset to beginning
// The Coding Train / Daniel Shiffman
// Processing Intro Series
float[] fruitInventory = {50, 100, 70, 110};
String[] fruitNames = {"mango", "strawberry", "kiwi", "plum"};
int index = 0;

void setup() {
  size(640, 360);
}

void mousePressed() {
  index = index + 1;

  //reset back to beginning
  if (index >= fruitInventory.length) {
    index = 0;
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
