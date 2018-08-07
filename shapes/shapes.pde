/*Program created as part of final educational project for course at Codeclan (www.codeclan.com)

//had to remove sound file as it was one I had purchased years ago
//hence soundfiles have been greyed out in the code.

*/

//import processing.sound.*;

int time;
//SoundFile file;
//String audioName = "BlueMonday.mp3";
String path;

void setup() {
  fullScreen();
  frameRate(4);
  background(0);
  smooth();
  time = millis();
  //sound();
}

void draw() {

  if (millis()-time < 4000) {

    drawGoldCircles();
  } else if ((millis()-time > 4001) && (millis()-time <5000)) {
    clearScreen();
  } else if ((millis()-time > 4001) && (millis()-time <11000)) {
    drawBlueCircles();
  } else if ((millis()-time > 11001) && (millis()-time <12000)) {
    clearScreen();
  } else if ((millis()-time > 12001) && (millis()-time <26000)) {

    drawRandomColourCircles();
  } else if ((millis()-time > 26001) && (millis()-time <27000)) {
    clearScreen();
  } else if ((millis()-time > 27001) && (millis()-time <34000)) {
    moreMaths();
  } else if ((millis()-time > 34001) && (millis()-time <35000)) {
    clearScreen();
    //soundStop();
  } else {
    clearScreen();
  }
}

//void sound() {
//  path = sketchPath(audioName);
//  file = new SoundFile(this, path);
//  file.play();
//}

//void soundStop() {
 
//  file.stop();
//}

void drawGoldCircles() {
  GoldCircles thisGoldCircs = new GoldCircles();
  thisGoldCircs.createCircles(width/2,340, 7);
}

void drawBlueCircles() {
  OutwardCircles thisBlueCircs = new OutwardCircles();
  thisBlueCircs.createBlueCircles();
}

void drawRandomColourCircles() {
  OutwardCircles thisRandomColourCircs = new OutwardCircles();
  thisRandomColourCircs.createRandomColourCircles();
}

void moreMaths() {
  fill(255);
  textSize(90);
  textAlign(CENTER);
  String moreMaths = "There's more ...";
  text(moreMaths, width/2, height/2-25);
}

void clearScreen() {
  clear();
}
