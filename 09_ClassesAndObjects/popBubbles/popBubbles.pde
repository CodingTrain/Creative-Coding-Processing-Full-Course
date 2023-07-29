// Two bubble classes
// The Coding Train / Daniel Shiffman
// Processing Intro Series

BigBubble[] bigBigBubbles = new BigBubble[5];
SmallBubble[] smallBubbles = new SmallBubble[100];

void setup() {
  size(640, 360);

  //initialize big bubbles
  for (int i = 0; i < bigBigBubbles.length; i++) {
    float x = random(width);
    float y = random(height);
    float r = random(20, 40);
    bigBigBubbles[i] = new BigBubble(x, y, r);
  }

  //initialize small bubbles
  for (int j = 0; j < smallBubbles.length; j++) {
    float x = random(width);
    float y = random(height);
    float r = random(5, 10);
    smallBubbles[j] = new SmallBubble(x, y, r);
  }
}

void draw() {
  background(0, 0, 205);

  //show and update bubbles
  for (int j = 0; j < smallBubbles.length; j++) {
    smallBubbles[j].update();
    smallBubbles[j].edges();
    smallBubbles[j].show();
  }

  for (int i = 0; i < bigBigBubbles.length; i++) {
    bigBigBubbles[i].update();
    bigBigBubbles[i].edges();
    bigBigBubbles[i].show();
  }
}
