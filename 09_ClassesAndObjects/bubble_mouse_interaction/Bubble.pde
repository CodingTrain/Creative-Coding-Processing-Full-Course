class Bubble {
  float x, y, r;
  color bubCol;

  Bubble(float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;
    bubCol = color(random(100, 255), 0, random(100, 255), 200); //bubble color
  }

  void update() {
    y = y - random(1, 2);
    x = x + random(-1, 1);
  }
  
  void changeColor(){
   bubCol = color(random(100, 255), random(100), random(100, 255), 200); //bubble color 
  }
  
  boolean withinBubble(float mx, float my){
    //check if mouse is within bubble
    return dist(mx, my, x, y) < r; 
  }

  void show() {
    strokeWeight(2);
    stroke(255);
    fill(bubCol);
    circle(x, y, r*2); //bubble
    strokeWeight(r/5);
    arc(x, y, r, r, PI, radians(250)); //highlight
  }


  void edges() {
    //place bubble back at the  bottom of canvas
    if (y < -r) {
      y = height + r/2;
    }
  }
}  
