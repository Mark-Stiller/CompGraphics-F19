class Car{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  
  Car(){
    c = color(127);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
  }
  
  Car(color c, float xpos, float ypos, float xspeed){
    this.c=c;
    this.xpos=xpos;
    this.ypos=ypos;
    this.xspeed=xspeed;
  }
  
  void display(){
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20,10);
  }
  
  void move(){
    xpos = xpos+xspeed;
    if (xpos > width){
      xpos=0;
    }
  }
}
