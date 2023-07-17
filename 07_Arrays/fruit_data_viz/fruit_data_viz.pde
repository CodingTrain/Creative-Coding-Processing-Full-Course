// Fruit Data Visualization 
// The Coding Train / Daniel Shiffman
// Processing Intro Series
float[] fruitInventory = new float[5];
String[] fruitNames = {"mango", "strawberry", "kiwi", "plum", "blueberry"};
color[] colorArray = new int[]{#D9A407, #EE0E00, #3CB03E, #4B2473, #4188FF};

void setup() {
  size(640, 360);

  for (int i = 0; i < fruitInventory.length; i++) {
    fruitInventory[i] = random(25, 145);
  }
}

void mousePressed() {
  //randomize when mouse pressed
  for (int i = 0; i < fruitInventory.length; i++) {
    fruitInventory[i] = random(25, 145);
  }
}

void draw() {
  background(240);
  strokeWeight(24);
  strokeCap(SQUARE); //Line has squared end, not rounded

  textAlign(CENTER);
  textSize(24);

  float sum = 0; 
  for (int i = 0; i < fruitInventory.length; i++) {
    fill(colorArray[i]);
    stroke(colorArray[i]);
    float x = 100 + i * 100;
    //line height is number of fruit inventory
    line(x, height/2, x, height/2 - fruitInventory[i]);
    text(fruitNames[i], x, height/2 + 24); //fruit name labels

    /*We declared the fruit inventory array as having floats
     which means the random values we assign will be decimal
     numbers, but if I want to display a whole number I can use
     int() to convert a float to an integer. See what happens
     when you remove it!*/
    text(int(fruitInventory[i]), x, height/2 - fruitInventory[i] - 24/2); //display number of each fruit
    
    sum += fruitInventory[i]; //add the value of the inventory each time through the loop
  }

  fill(0); 
  text("Total Fruit Inventory: " + int(sum), width/2, height/2 + 100);
  
  float average = sum/fruitInventory.length; 
  text("Average Number of Fruits: " + int(average), width/2, height/2 + 150); 
}
