//creates the blue circles which look static and the random colour circles which appear to move
class OutwardCircles {
  int radius =20;
  float x, y;

  OutwardCircles() {
    strokeWeight(2);
    noFill();
    x = width/2;
    y = height/2;
   
  }
void createBlueCircles() {
    stroke(#0D18FF);
    while (radius<800) {
      ellipse(x, y, radius*2, radius*2); 
      radius += 40; 
    }
  }

  void createRandomColourCircles() {
   
    for(radius = 10; radius<800; radius += 10) {
      ellipse(x, y, radius*2, radius*2); 
      stroke(random(255), random(255), random(255));
    }
  }
}
/*
..............................................
code below with more notes on how this all works
  void createBlueCircles() {
    stroke(#0D18FF);
    while (radius<800) {
      //I use 800 as a condition, an arbitrary figure which meant it would fill 
      //the screen but could equally use 'width' or 'x'(being width/2) or if wanted 
      //full circles only within confines of screen could use y (being height/2).
      ellipse(x, y, radius*2, radius*2); //centre of circle at centre of screen
      radius += 40; //could use any figure here, 
      //the higher the value the less circles on the screen, the lower the value the more circles
    }
  }

  void createRandomColourCircles() {
    //as draw in shapes.pde is constantly being called the circles are constantly
    //being draw again which gives the appearance of movement. 
    //the frameRate in shapes.pde is providing the speed of redraw. This can be
    //overridden by putting a frameRate into the constructor of this class.
    for(radius = 10; radius<800; radius += 10) {
      ellipse(x, y, radius*2, radius*2); 
      stroke(random(255), random(255), random(255));

    }
  }
    //alternative if want to stick with while loops 
    //void createRandomColourCircles() {
    //radius = 10;
    //while(radius<800) {
     
    //  ellipse(x, y, radius*2, radius*2); 
    //  stroke(random(255), random(255), random(255));
    //  radius += 10;

    //}
  }
*/
