// Conversion Function
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float measurement, footLength, meterLength;
float minNum = 20; //min measurement
float maxNum = 330; //max measurement

void setup() {
  size(640, 360);
  measurement = selectNum();
}

void mousePressed() {
  measurement = selectNum();
}

void draw() {
  background(240);
  //Position of lines
  float x1 = width/6;
  float x2 = width - width/6;
  float footLineY = height/4; //top line
  float meterLineY = height - height/4; //bottom line

  strokeWeight(80);
  /*blendMode() blends the pixels in the display window according to a defined mode.
   blendMode(BLEND) is the default. */

  //Gray lines
  blendMode(BLEND);
  stroke(230);
  line(x1, footLineY, x2, footLineY);
  line(x1, meterLineY, x2, meterLineY);

  //Black lines (update with every new measurement)
  stroke(0);

  /*lerp() calculates a number between two numbers at a specific increment.
   It is convenient for creating motion along a straight path.
   Try un-commenting the alternative to see how the line length changes from
   a gradual motion to instantaneous update.*/
  footLength = lerp(footLength, measurement, 0.05);
  meterLength = lerp(meterLength, footToMeter(measurement), 0.05);

  //----ALTERNATIVE-----
  //footLength = measurement;
  //meterLength = footToMeter(measurement);

  line(x1, footLineY, x1 + footLength, footLineY);
  line(x1, meterLineY, x1 + meterLength, meterLineY);



  textSize(14);
  fill(255);
  /*blendMode(DIFFERENCE) subtracts colors from the underlying image/shape so
   when the black line is over the text, the text is white. Otherwise,
   the text is black (legibility). */
  blendMode(DIFFERENCE);
  textAlign(CENTER, CENTER);

  //Use the round() function to round to the nearest foot/meter.
  text(round(footToMeter(measurement)) + " METERS", width/2, meterLineY);
  text(round(measurement) + " FEET", width/2, footLineY);
  text("FOR APPROXIMATE LENGTH, DIVIDE BY 3.281", width/2, height/2);
}

float selectNum() {
  return (random(minNum, maxNum));
}

float footToMeter(float ft) {
  return ft/3.281;
}
