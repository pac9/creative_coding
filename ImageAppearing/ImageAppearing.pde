/*Program created as part of final educational project for course at Codeclan (www.codeclan.com)

Folder structure is : 
Folder called ImageAppearing 
then inside this is this pde file and a folder call data
Inside the data folder is the image and the font

Image had been changed to a cohort photo which was on the web 
rather than spock which was shown in my final presentation delivered on 26 July 2018 */


//variables
PFont myFontBold, myFontThin; 
//PImage spock;
PImage dayone;
int prosper = 12000; //used to create 12 seconds when used with millis(); used for changing screen view in draw 
int beam = 16000;  //16 seconds; see prosper above for more info

void setup() {
//called once at start of program
fullScreen();
myFontThin =createFont("PingFangTC-Semibold-36.vlw", 36, true); 
textFont(myFontThin);
//spock = loadImage("spocklarger.jpg");
dayone= loadImage("Codeclan_E21_dayone.jpg");
background(0); 
millis();  //milliseconds
textSize(90);

}

void draw() { 
  
/*draw is called constantly during the program, on average 34 times a second
hence to prevent all methods constantly being called with no delay, 
have set up a conditional determined by time.
This conditionals can be removed if only want one image to be displayed*/

  if(millis()> beam)
 {
     clear();
     moreMaths();
  }
  else if ((millis() > prosper) && (millis() < beam))
  {liveLong();
  }
 
  else{
   imagePixelated();
 }
}


void imagePixelated(){
 // The code in this function is based on https://processing.org/examples/pointillism.html
 // and The Coding Train https://www.youtube.com/watch?v=NbX3RnlAyGU
  for (int i = 0; i<250; i++){
//i is the number of circles loaded each time. 
//If want slower or quicker reveal then change this figure.
//please also remember that due to the 'if' statement in 'draw' this part
//of the program is run for a fixed amount of time
  
  float x = random(width); 
  float y = random(height);

  //color c = spock.get(int(x-250), int(y-200));
    color c = dayone.get(int(x-225), int(y-200)); //get(x,y) gives x & y coordinate 
    //of the pixel

  fill(c); //colour in centre of ellipse
  noStroke();  // no outline to the ellipse
  ellipse(x,y,5, 5); //x and y are the coordinates at the centre of the ellipse 
//and the two '5' figures relate to the height and width of the ellipse
  }
}

//putting clear image onto page on top of pixellated image along with text header
void liveLong(){
  //image(spock, 250, 200);
    image(dayone, 225, 200);// loads the image at coordinates(225,200)
    //note there is a jaggy edge as this image is not perfectly sitting 
    //top of underlying image, I'm not sure why as did not have
    //this problem with the spock picture
  fill(255);  //colour of writing
  String liveLong = "Live long and prosper";
  text(liveLong, 225, 150);

}

//setting up words 
void moreMaths(){

  String moreMaths= "Now for more maths..";
  text(moreMaths, 280, 400);

}
//There will be other ways of achieving the above but this was my attempt 
//within the confines of the time available to dedicate to this. 

/*
................................................................
code without the comments

PFont myFontBold, myFontThin; 
PImage dayone;
int prosper = 12000; 
int beam = 16000;  

void setup() {
fullScreen();
myFontThin =createFont("PingFangTC-Semibold-36.vlw", 36, true); 
textFont(myFontThin);
dayone= loadImage("Codeclan_E21_dayone.jpg");
background(0); 
millis(); 
textSize(90);

}

void draw() { 

 if(millis()> beam)
 {
     clear();
     moreMaths();
  }
  else if ((millis() > prosper) && (millis() < beam))
  {liveLong();
  }
 
  else{
   imagePixelated();
 }
}


void imagePixelated(){

  for (int i = 0; i<250; i++){
  float x = random(width); 
  float y = random(height);

  color c = dayone.get(int(x-225), int(y-200)); 

  fill(c); 
  noStroke(); 
  ellipse(x,y,5, 5);
  }
}


void liveLong(){
  
  image(dayone, 225, 200);
  fill(255);  
  String liveLong = "Live long and prosper";
  text(liveLong, 225, 150);

}

void moreMaths(){

  String moreMaths= "Now for more maths..";
  text(moreMaths, 280, 400);

}
*/
