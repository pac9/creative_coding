//Program created as part of final educational project for course at Codeclan (www.codeclan.com)

//had to remove sound file as it was one I had purchased online 
//hence soundfiles have been greyed out in the code.

//I've still no idea why when I showed this in class
//the clock was not in the middle as it always when I run the program

//import processing.sound.*;


PFont myFontBold, myFontThin; 
int selected;
int gap;
float radius = 300;
float secondsRadius = radius * 0.94;
float clockRadius = radius * 2;
float centrex;
float centrey;
//SoundFile file;
//String path;
//String themeTune = "Clock.mp3";
String lettersUnsolved [] = {"C", "L", "E", "A", "N", "C", "O", "D", "E", "1", "2"};
String letterSolved [] = {"C", "O", "D", "E", "C", "L", "A", "N", "E", "2", "1"};
int time;


void setup() {
  //setup runs once at start of program
  fullScreen();//size of screen in which sketch runs
  myFontThin =createFont("PingFangTC-Semibold-36.vlw", 36, true); //font selection imported
  textFont(myFontThin);
  //sound();
  time=millis(); //milliseconds
}
void draw() { 
  //constantly runs, around 34 times a second, 
  //hence included time delay to allow screen to change
  
  if (millis()-time < 4000) { //for first 4 seconds
    intro();
  } else if ((millis() -time >4000) && (millis()-time <8000)) {//for 4secs to 8secs of program
    yourConum();
  } else {

    fill(255);
    background(#8CD5FF); 
    titleConundrum(); 

    drawOuterClockCircle();
    drawInnerClockCircle();
    
    drawRect();
    drawFiveSecIntLines();
    drawQuarterLines();
   
      if (millis()<30000) {
        drawSecondsHand();
      } else {
        showFinalPositionOfHand();
        drawRect2();
      }
    
  }
}

void intro() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(90);
  String finalCountdown = "Time for my final countdown";
  text(finalCountdown, width/2, (height/2)-110);
}

void yourConum() {
  textAlign(CENTER);
  String and = "and";
  String finalWords = "your final conundrum";
  text(finalWords, width/2, height/2+100);
  text(and, width/2, height/2-5);
}

void titleConundrum() {
  fill(0);  
  textAlign(CENTER);
  textSize(40);
  String conundrum = "REARRANGE";
  text(conundrum, 450, 65);
}


void drawRect() {
  stroke(0);
  strokeWeight(2);
  int l=0;
  textSize(40);
  for (int x = 0; x < 770; x = x+70) {
    fill(255);
    rect( x+((width- (70*11))/2), 90, 70, 70);
    fill(0);
    String letter = lettersUnsolved[l];
    text(letter, x+((width- (70*11))/2)+30, 135);
    l +=1;
  }
}
void drawRect2() {
  stroke(0);
  strokeWeight(2);
  int l=0;
  textSize(40);
  for (int x = 0; x < 770; x = x+70) {
    fill(255);
    rect( x+((width- (70*11))/2), 180, 70, 70);
    fill(0);
    String letter = letterSolved[l];
    text(letter, x+((width- (70*11))/2)+30, 225);
    l +=1;
  }
}

void drawOuterClockCircle() {
  stroke(0);
  /// centre at coordinates 720, 565 with diameter of 600 pixels
  strokeWeight(5);
  ellipse(centrex, centrey, clockRadius, clockRadius);
}

void drawInnerClockCircle() { 
  fill(255);
  strokeWeight(2);
  stroke(80, 80, 80);
  ellipse(centrex, centrey, (clockRadius * .95), (clockRadius * .95));
}

void drawQuarterLines() {
  stroke(0);
  strokeWeight(2);

  line(centrex, centrey, centrex, centrey-(radius*.95));
  line(centrex, centrey, centrex, centrey+(radius*.95));
  line(centrex, centrey, centrex-(radius*.95), centrey);
  line(centrex, centrey, centrex+(radius*.95), centrey);
}

void drawFiveSecIntLines() {
  for (int a = 0; a < 360; a+=30) { //60 seconds in a minute 60*6 = 360
    strokeWeight(1);
    stroke(180);
    float angle = radians(a); 
    line(centrex, centrey, centrex + cos(angle) * secondsRadius, centrey + sin(angle) * secondsRadius);
  }
}

void drawSecondsHand() {
  // basis of second hand taken from https://processing.org/examples/clock.html
  stroke(#2450FF);
  strokeWeight(8);
  float s = map(millis(), 0, 60000, 0, TWO_PI) - HALF_PI;
  centrex = 720;
  centrey = 565;
  line(centrex, centrey, centrex + cos(s) * secondsRadius, centrey + sin(s) * secondsRadius);
}

void showFinalPositionOfHand() {
  stroke(#2450FF);
  strokeWeight(8);
  line(centrex, centrey, centrex, centrey+(radius*.95));
}
//void sound(){
// path = sketchPath(themeTune);
// file= new SoundFile(this, path);
// file.cue(2);
// file.play();
//}
