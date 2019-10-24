class Rotater{
  
  float x,y, speed, side;
  float theta=0;

  Rotater(){
    this.x=random(side,width-side);
    this.y=random(side,height-side);
    this.speed=random(-.1,.1);
    this.side=random(40);
  }
  
  Rotater(float x, float y, float speed, float side){
    this.x=x;
    this.y=y;
    this.speed=speed;
    this.side=side;
  }
  
  void display(){
    rectMode(CENTER);
    stroke(0);
    //two-arg for a grayscale transparency
    fill(0,100);
    
    pushMatrix();
    
    translate(x,y);
    rotate(theta);
    rect(0,0,side,side);
    
    popMatrix();
  }
  
  void spin(){
    theta=theta+speed;
  }

}
