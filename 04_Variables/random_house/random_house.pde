// The random() function (Random House Exercise)
// The Coding Train / Daniel Shiffman
// Processing Intro Series

void setup() {
  size(640, 460);
  pixelDensity(2); 
  frameRate(5); //sketch will refresh 5 times per second
}

void draw() {
  // Sky
  background(50, 50, 250);
  rectMode(CORNER);

  // Grass
  fill(25, 200, 25);
  rect(0, height / 2, width, height / 2); //Draw grass


  float x = width / 2;
  float y = height / 2;
  float w = random(150, 400);
  float r = random(0.2, 1); //scale ratio
  float h = w * r;
  float sw = random(2, 4); //thickness of line
  strokeWeight(sw);
  stroke(0);

  // House
  rectMode(CENTER);
  fill(random(100, 255), 0, random(100, 255));
  rect(x, y, w, w * r);

  // Roof
  float randomHeight = random(h / 2 + 50, 200);
  fill(random(50, 255), random(0, 50), random(0, 50));
  triangle(x - w / 2, y - (w * r) / 2, x + w / 2, y - (w * r) / 2, x, y - randomHeight);

  // Windows
  float windowWidth = random(10, h / 3);
  float windowPosX = random(windowWidth, w / 2 - windowWidth);
  strokeWeight(2);
  stroke(0);
  fill(random(100, 255), random(100, 255), random(100, 255));
  rect(x - windowPosX, y - (w * r) / 4, windowWidth, windowWidth);
  rect(x + windowPosX, y - (w * r) / 4, windowWidth, windowWidth);
  line(x - windowPosX, y - (w * r) / 4 - windowWidth / 2, x - windowPosX, y - (w * r) / 4 + windowWidth / 2);
  line(x - windowPosX - windowWidth / 2, y - (w * r) / 4, x - windowPosX + windowWidth / 2, y - (w * r) / 4);
  line(x + windowPosX, y - (w * r) / 4 - windowWidth / 2, x + windowPosX, y - (w * r) / 4 + windowWidth / 2);
  line(x + windowPosX - windowWidth / 2, y - (w * r) / 4, x + windowPosX + windowWidth / 2, y - (w * r) / 4);

  //Door
  noStroke();
  fill(random(100, 255), random(100, 255), random(100, 255));
  rect(x, y + h / 4, h / 4, h / 2 - sw * 2);
  fill(random(0, 50), random(0, 50), random(0, 50));
  circle(x - h / 24, y + h / 4, h / 12);
}

void mousePressed() {
  background(0);
}
