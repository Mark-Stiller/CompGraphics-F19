float s=0f;

void setup(){
  size(300,300,P3D);
}

void draw(){
  background(255);
  translate(height/2,width/2);
  scale(s);
  
  rectMode(CENTER);
  fill(125);
  rect(0,0,10,10);
  
  if(s>20) s=0;
  s+=.1;
}
