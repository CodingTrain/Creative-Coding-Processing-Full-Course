// Flower
// The Coding Train / Daniel Shiffman
// Processing Intro Series

size(640, 360); //canvas size

background(240); //set background color

stroke(0, 128, 0); // stem color
strokeWeight(10); //thickness of line
line(320, 180, 320, 360); //stem

fill(147, 112, 219); //petal color
noStroke(); //no circle outline

//petals
circle(320 + 50, 180, 50);
circle(320 - 50, 180, 50);
circle(320, 180 + 50, 50);
circle(320, 180 - 50, 50);
circle(320 - 37.5, 180 - 37.5, 50);
circle(320 + 37.5, 180 + 37.5, 50);
circle(320 - 37.5, 180 + 37.5, 50);
circle(320 + 37.5, 180 - 37.5, 50);

fill(255, 255, 0); //flower center color
circle(320, 180, 85); //flower center
