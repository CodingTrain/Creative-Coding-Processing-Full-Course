// Fruit Data Visualization
// The Coding Train / Daniel Shiffman
// Processing Intro Series
float[] fruitInventory = new float[5];
String[] fruitNames = {"mango", "strawberry", "kiwi", "plum", "blueberry"};

/*Another way to represent colors instead of RGB, is by using
 hexidecimal notation (ex: #FFFFFF is the color white). Many
 color palettes found online use hex codes to denote colors.
 You can convert RGB to Hex or vice versa using online tools. */
color[] colorArray = new color[]{#D9A407, #EE0E00, #8C6432, #9253A1, #4188FF};

void setup() {
  size(640, 360);

  for (int i = 0; i < fruitInventory.length; i++) {
    fruitInventory[i] = random(25, 145);
  }
  
  pixelDensity(2);
}

void mousePressed() {
  //randomize when mouse pressed
  for (int i = 0; i < fruitInventory.length; i++) {
    fruitInventory[i] = random(25, 145);
  }
}

void draw() {
  background(0, 0, 50);
  strokeCap(SQUARE); //Line has squared end, not rounded
  textAlign(CENTER);
  textSize(24);

  float sum = 0;
  for (int i = 0; i < fruitInventory.length; i++) {
    fill(colorArray[i]);
    rectMode(CORNER);
    strokeWeight(2);
    stroke(colorArray[i]);
    noFill();

    float x = 80 + i * 120;
    
    //bar outline
    rect(x - 12, height/2, 24, -150);
    
    //line height is number of fruit inventory
    strokeWeight(24);
    line(x, height/2, x, height/2 - fruitInventory[i]);
    text(fruitNames[i], x, height/2 + 24); //fruit name labels

    /*We declared the fruit inventory array as having floats
     which means the random values we assign will be decimal
     numbers, but if you want to display a whole number you can use
     int() to convert a float to an integer. See what happens
     when you remove int()!*/
    text("qty: " + int(fruitInventory[i]), x, height/2 + 48); //display number of each fruit

    sum += fruitInventory[i]; //add the value of the inventory each time through the loop
  }

  fill(240);
  text("Total Fruit Inventory: " + int(sum), width/2, height/2 + 100);
  
  fill(240);
  textSize(14);

  textAlign(LEFT, CENTER);
  text("FRUIT INVENTORY", 40, height - 40);

  textAlign(CENTER, CENTER);
  text("CTRL + ALT + DELI", width/2, height - 40);

  textAlign(RIGHT, CENTER);
  text("EST. 2001", width - 40, height - 40);
}
