/*Program created as part of final educational project for course at Codeclan (www.codeclan.com)

Folder structure is : 
Folder called stars 
then inside the folder is stars.pde file and this file

Used https://www.youtube.com/watch?v=17WoOqgXsRM&t=493s  Starfield in Processing and
and https://cs.brynmawr.edu/gxk2013/examples/transformations/starfield/
for stars in code
*/


class Star {
 float x; 
 float y; 
 float z;


Star(){
  //tried to use width and height in random parameters but couldn't get the flow right 
  x = random(-5000, 5000);
  y = random(-5000, 5000);
  z = random(0, 2000);
}

void update(){
  z = z - 10; // moves start to front of screen
  //if reaches front of screen then reset star to one far back on screen
  if (z < 1){
    z = 2000;
    x = random(-5000, 5000);
    y = random(-5000, 5000);
  }
  
}

void show(){
 fill(255);
 noStroke();
 float sx = (x/z)*100;
 float sy = (y/z)*100;
 float scalez = (2000-z)/10000;
 
 pushMatrix();
 translate(sx, sy);
 scale(scalez);
 ellipse(0,0,20,20);
 popMatrix();
}
}
