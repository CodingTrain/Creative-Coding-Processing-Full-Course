// Self Portrait
// The Coding Train / Daniel Shiffman
// Processing Intro Series

size(640, 360); //canvas size

background(240); //set background color

//head
circle(320, 180, 150);

//eyes
circle(320 - 30, 180 - 15, 25);
circle(320 + 30, 180 - 15, 25);

//glasses
noFill();
circle(320 + 30, 180 - 15, 50);
circle(320 - 30, 180 - 15, 50);
line(320 + 5, 180 - 15, 320 - 5, 180 - 15);


//mouth
arc(320, 180+25, 50, 50, 0, PI, CLOSE);
