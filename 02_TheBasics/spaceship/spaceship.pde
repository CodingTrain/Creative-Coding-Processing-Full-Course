// Spaceship
// The Coding Train / Daniel Shiffman
// Processing Intro Series

size(640, 360); //canvas size

background(240); //set background color
strokeWeight(2); //line thickness

noFill();
ellipse(320, 180 - 70 + 35, 300, 150);
circle(320, 180 + 5, 20);
circle(320 + 75, 180 - 10, 20);
circle(320 - 75, 180 - 10, 20);
circle(320 - 120, 180 - 50, 20);
circle(320 + 120, 180 - 50, 20);

fill(240);
ellipse(320, 180 - 70, 200, 100);

line(320 - 100, 180 + 30, 320 - 200, 180 + 200);
line(320 + 100, 180 + 30, 320 + 200, 180 + 200);
