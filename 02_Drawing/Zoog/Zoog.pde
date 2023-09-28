size(480, 270);
rectMode(CENTER); 
colorMode(RGB, 255, 255, 255, 100);
background(100, 0, 150);

// Legs
stroke(255, 255, 0);
strokeWeight(8);
line(235, 180, 220, 205);
line(245, 180, 260, 205);  

// Body
noStroke();
fill(255, 150, 200, 75);
rect(240, 145, 25, 100);

// Head
fill(255, 200, 100);
circle(240, 115, 60);

// Eyes
fill(0, 150, 255);
ellipse(221, 115, 16, 32); 
ellipse(259, 115, 16, 32);
