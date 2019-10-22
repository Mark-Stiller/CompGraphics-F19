//int x =0;
//int y =0;
Vector2D position = new Vector2D(0,0);
Vector2D velocity = new Vector2D(2,3);;
//int speedX = 3;
//int speedY = 2;
void setup(){
  size(600,400);
  //smooth
}
//int circleX = 0;
//int circleY = height/2;
void draw(){
  background(255);
  //ellipseMode(CENTER);
  //x = x + speedX;
  //y = y + speedY;
  
  if((position.x > width) || (position.x < 0))
    //speedX = speedX * -1;
    velocity.x*= -1;
  
  if((position.y > height) || (position.y < 0))
    velocity.y*= -1;
  
  
  stroke(0);
  strokeWeight(2);
  fill(127);
  ellipse(position.x,position.y, 48, 48);
  //y = y+ speed;
}
