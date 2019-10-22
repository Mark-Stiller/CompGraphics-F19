int circleX = 100;
int circleY = 0;
int diameter = 50;

void setup(){
  size(200,200);
}

void draw(){
  background(255);
  stroke(0);
  fill(140);
  ellipse(circleX,circleY,diameter,diameter);
  
  circleX++;
}
