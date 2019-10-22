float circleX;
float circleY;
float d;

float r;
float g;
float b;

void setup(){
  size(200,200);
  background(255);
  frameRate(3);
  println("framerate: " + frameRate);
}

void draw(){
  circleX = random(0,width);
  circleY = random(0,height);
  d = random(10,30);
  
  r=random(0,256);
  g=random(0,256);
  b=random(0,256);
  
  noStroke();
  fill(r,g,b);
  ellipse(circleX,circleY,d,d);
  println("frame count = " + frameCount);
}
