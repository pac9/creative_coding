//recursion based on
//https://processing.org/examples/recursion.html

class GoldCircles {
  int radius = 20;
  float x, y;



GoldCircles() {
  
    stroke(#C9A734);
    strokeWeight(2);
    noFill();
    x = width/2;
    y = height/2;

  }


  void createCircles(int x, int radius, int circles) {
    
    while (circles>1) {
      ellipse(x, y, radius*2, radius*2);
      circles = circles -1;
      createCircles(x-radius/2, radius/2, circles);
      createCircles(x+radius/2, radius/2, circles);
    }
  }
}
