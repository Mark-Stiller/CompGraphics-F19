int x;
int y;
int speedX = 5;
int speedY = -3;
boolean moveRight=true;
boolean moveDown=true;

void setup(){
  size(200,200);
  
  x = 0;
  y = height/2;
}

void draw(){
  background(255);
  stroke(0);
  fill(170);
  ellipse(x,y,30,30);
  
  if (moveRight){
    x += speedX;
  }
  else x -= speedX;
  if (moveDown){
    y += speedY;
  }
  else y -= speedY;
  
  if (x>width || x<0){
    moveRight = !moveRight;
  }
  if (y>height || y<0){
    moveDown = !moveDown;
  }
}
