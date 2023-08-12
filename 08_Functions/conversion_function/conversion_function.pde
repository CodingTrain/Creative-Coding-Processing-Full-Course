// Conversion Function
// The Coding Train / Daniel Shiffman
// Processing Intro Series

float measurement, fahrenheit, celsius;
float minNum = 32; //min measurement
float maxNum = 330; //max measurement

void setup() {
  size(640, 360);
  pixelDensity(2);
  measurement = selectNum();
}

void mousePressed() {
  measurement = selectNum();
}

void draw() {
  background(255);
  //Position of lines
  float x1 = width/6;
  float x2 = width - width/6;
  float fLine = height/4; //top line (fahrenheit)
  float cLine = height - height/4; //bottom line (celsius)

  strokeWeight(80);
  /*blendMode() blends the pixels in the display window according to a defined mode.
   blendMode(BLEND) is the default. */

  //Gray background lines
  blendMode(BLEND);
  stroke(230);
  line(x1, fLine, x2, fLine);
  line(x1, cLine, x2, cLine);

  //Black lines (update with every new measurement)
  stroke(0);

  /*lerp() calculates a number between two numbers at a specific increment.
   It is convenient for creating motion along a straight path.
   Try un-commenting the alternative to see how the line length changes from
   a gradual motion to instantaneous update.*/
  fahrenheit = lerp(fahrenheit, measurement, 0.05);
  celsius = lerp(celsius, fahrenheitToCelsius(measurement), 0.05);

  //----ALTERNATIVE-----
  //fahrenheit = measurement;
  //celsius = fahrenheitToCelsius(measurement);

  line(x1, fLine, x1 + fahrenheit, fLine);
  line(x1, cLine, x1 + celsius, cLine);


  textSize(14);
  fill(255);
  /*blendMode(DIFFERENCE) subtracts colors from the underlying image/shape so
   when the black line is over the text, the text is white. Otherwise,
   the text is black (legibility). */
  blendMode(DIFFERENCE);
  textAlign(CENTER, CENTER);

  //Use the round() function to round to the nearest degree.
  text(round(fahrenheitToCelsius(measurement)) + "° CELSIUS", width/2, cLine);
  text(round(measurement) + "° FAHRENHEIT", width/2, fLine);
}

float selectNum() {
  return (random(minNum, maxNum));
}

float fahrenheitToCelsius(float degF) {
  return (degF - 31) * 5/9 ;
}
