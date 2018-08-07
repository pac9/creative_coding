/*Program created as part of final educational project for course at Codeclan (www.codeclan.com)

Folder structure is : 
Folder called stars 
then inside the folder is this pde file and the star.pde

Sound file has not been uploaded for copyright reasons

Appreciate that all words could have been put into an array instead of separate methods

Used https://www.youtube.com/watch?v=17WoOqgXsRM&t=493s  Starfield in Processing and
and https://cs.brynmawr.edu/gxk2013/examples/transformations/starfield/
as basis for stars

*/


//import processing.sound.*;

Star[] stars = new Star[400];
int time;

//SoundFile file;
//String audioName = "Frontier.mp3";
//String path;

void setup() {

  fullScreen();
  textAlign(CENTER);
  time=millis();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  //sound();
}

void draw() {
  background(0); // black background
  
   drawStars();

  if ((millis()- time > 12000) && (millis()-time < 17000)) {
    drawGroup();
    
  } 
  else if ((millis()- time > 17000) && (millis()-time < 28000))
  {
    drawGroup();
    drawLine();
    drawFrontier();
  } 
  else if ((millis()- time > 28000) && (millis()-time < 37000))
  {
    drawBoldly();
  } 
  else if ((millis() - time > 37000) && (millis()-time <47000)) {
    drawBeen();
  }  
 
  
  
 else if ((millis()- time > 47000) && (millis()-time < 52000))
  {
   
    //drawMoreMaths();
  } 
  
  
   else {
   drawZero();}
  
}

void drawZero() {
 
}   


void drawStars() {
  translate(width/2, height/2); //stars start at center of screen
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}

void drawGroup() {

  textSize(200);
  String cohort = "E21";
  text(cohort, 0, -100);
}

void drawFrontier() {

  textSize(100);
  String frontier = "The Final Frontier";
  text(frontier, 0, 100);
}

void drawBoldly() {

  String boldyGoing = "We're boldly going ...";
  text(boldyGoing, 0, 0);
}

void drawBeen() {
  String been= "where we've";
  text(been, 0, -100);

  String beenBefore = "never been before";
  text(beenBefore, 0, 100);
}

void drawLine() {

  stroke(255);
  strokeWeight(3);
  line(-500, -30, 500, -30);
}

//void sound() {
//  path = sketchPath(audioName);
//  file = new SoundFile(this, path);
//  file.play();
//}
