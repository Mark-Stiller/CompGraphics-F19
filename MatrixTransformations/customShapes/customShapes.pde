void setup(){
  size(300,300,P3D);
}

void draw(){
  background(255);
  fill(127);
  beginShape();
  vertex(50,50);
  vertex(150,25);
  vertex(150,175);
  vertex(25,150);
  endShape(CLOSE);
}
