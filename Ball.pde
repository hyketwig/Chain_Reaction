//Team WoeBeGone -- Jannie Li, Henry Zhang, Leo Auyeung
//APCS2 pd09
//HW47 -- All That Bouncin'
//2016-05-31

class Ball {
  
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
      
  //other constants necessary?
  
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  
  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r, g, b );
    
    rad = 10;
    
    x = random( (width - r) + r/2 );
    y = random( (height - r) + r/2 );

    dx = random(10) - 5;
    dy = random(10) - 5;
    
    state = MOVING;
  }
  

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }
  void draw(int i){
    ellipse(x, y, dx, dy);
  }
  
  void process(){
    move();
    if (isTouching){
      //functionality
    }
  }
 
 
 boolean isTouching( Ball other ) {
   return (other.x+rad
   //add radius to x y, dx, dy
 }
 
  
}//end class Ball