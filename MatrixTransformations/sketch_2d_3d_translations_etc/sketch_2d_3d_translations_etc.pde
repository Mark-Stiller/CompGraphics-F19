float z=0;

void setup(){
  size(200,200,P3D);
}

void draw(){
  background(255);
  fill(175);
  
  rectMode(CENTER);
  translate(width/2,height/2,z);
  rect(0,0,8,8);
  
  z+=2;
  if(z>200) z=0;
}
