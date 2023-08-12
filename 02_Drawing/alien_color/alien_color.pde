// Alien with color
// The Coding Train / Daniel Shiffman
// Processing Intro Series

size(640, 360); //canvas size

background(255); //set background color

//antennas
fill(45, 197, 244);
rectMode(CENTER);
rect(320 - 30, 180 - 80, 15, 75);
rect(320 + 30, 180 - 80, 15, 75);

fill(236, 1, 90);
circle(320 - 30, 180 - 120, 25);
circle(320 + 30, 180 - 120, 25);

//head  
fill(45, 197, 244);
circle(320, 180, 150);

//eyes
fill(252, 238, 33);
circle(320 - 30, 180 - 15, 40);
circle(320 + 30, 180 - 15, 40);
circle(320 + 30, 180 - 25, 50);
circle(320 - 30, 180 - 25, 50);

fill(45, 197, 244);
circle(320 + 30 - 10, 180 - 35, 10);
circle(320 - 30 - 10, 180 - 35, 10);


//mouth
noFill();
arc(320, 180+10, 25, 25, 0, PI);
