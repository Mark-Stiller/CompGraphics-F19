class Ball{
  
  //fields: Vector2D loc, Vector2D speed, color c
  Vector2D loc;
  Vector2D speed;
  color c;
  int d;
  //constructor(hSpeed, vSpeed, color, d)
  Ball(float speedX, float speedY, color c, int d){
    this.loc = new Vector2D(0,0);
    this.speed = new Vector2D(speedX,speedY);
    this.c = c;
    this.d = d;
  }
  //move() and display()
  void move(){
    if(loc.x<0 || loc.x>width){
      speed.x *= -1;
    }
    if(loc.y<0 || loc.y>height){
      speed.y *= -1;
    }
    
    loc.x += speed.x;
    loc.y += speed.y;
  }
  void display(){
    fill(c);
    ellipse(loc.x,loc.y, d,d);
  }
}
