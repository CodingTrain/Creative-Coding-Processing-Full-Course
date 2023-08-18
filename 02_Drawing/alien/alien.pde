// Alien
// The Coding Train / Daniel Shiffman
// Processing Intro Series

size(640, 360); //canvas size
pixelDensity(2); 

background(255); //set background color

//antennas
rectMode(CENTER);
rect(320 - 30, 180 - 80, 15, 75);
rect(320 + 30, 180 - 80, 15, 75);
circle(320 - 30, 180 - 120, 25);
circle(320 + 30, 180 - 120, 25);

//head
circle(320, 180, 150);

//eyes
circle(320 - 30, 180 - 15, 40);
circle(320 + 30, 180 - 15, 40);
circle(320 + 30, 180 - 25, 50);
circle(320 - 30, 180 - 25, 50);
circle(320 + 30 - 10, 180 - 35, 10);
circle(320 - 30 - 10, 180 - 35, 10);


//mouth
arc(320, 180+10, 25, 25, 0, PI);
