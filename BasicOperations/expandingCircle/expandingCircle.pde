void setup(){
  size(200,200);
}

//circle doesn't appear in the center; why?
int circleX = width/2;
int circleY = height/2;
int d = 50;

void draw(){
  background(255);
  stroke(0);
  fill(140);
  ellipse(circleX,circleY,d,d);
  
  d++;
}
