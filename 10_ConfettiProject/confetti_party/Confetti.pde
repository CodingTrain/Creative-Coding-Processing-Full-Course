class Confetti {
  float x, y;
  float xspeed, yspeed;
  Confetti() {
    x = -1000;
    y = -1000;
    xspeed = 0;
    yspeed = 0;
  }

  void burst(float mx, float my) {
    x = mx;
    y = my;
    xspeed = random(-5, 5);
    yspeed = random(-5, 5);
  }
  
  void update(){
   x = x + xspeed; 
   y = y + yspeed; 
   
   yspeed = yspeed + 0.1; 
  }

  void show() {
    fill(0);
    rectMode(CENTER);
    square(x, y, 10);
  }

}
