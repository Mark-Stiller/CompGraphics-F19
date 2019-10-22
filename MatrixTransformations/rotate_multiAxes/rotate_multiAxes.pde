void setup(){
  size(200,200,P3D);
}

void draw(){
  background(255);
  translate(height/2,width/2);
  rotateX(PI*mouseY/height);
  rotateY(PI*mouseX/width);
  
  rectMode(CENTER);
  fill(125);
  rect(0,0,100,100);
}
