class Ball{
  
  //fields: Vector2D loc, Vector2D speed, color c
  Vector3D loc;
  Vector3D speed;
  color c;
  float r;
  //constructor(hSpeed, vSpeed, color, d)
  Ball(float speedX, float speedY, float speedZ, color c, float r){
    this.loc = new Vector3D(0,0,0);
    this.speed = new Vector3D(speedX,speedY,speedZ);
    this.c = c;
    this.r = r;
  }
  //move() and display()
  void move(){
    if(loc.x<-150+r || loc.x>150-r){
      speed.x *= -1;
    }
    if(loc.y<-150+r || loc.y>150-r){
      speed.y *= -1;
    }
    if(loc.z<-150+r || loc.z>150-r){
      speed.z *= -1;
    }
    
    loc.add(speed);
  }
  void display(){
    pushMatrix();
    noStroke();
    fill(c);
    translate(loc.x,loc.y,loc.z);
    sphere(r);
    popMatrix();
  }
}
