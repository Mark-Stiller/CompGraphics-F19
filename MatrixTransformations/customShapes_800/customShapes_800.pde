void setup(){
  size(800,800);
}

void draw(){
  background(255);
  fill(127);
  beginShape();
  vertex(200,200);
  vertex(400,200);
  vertex(400,400);
  vertex(600,400);
  vertex(600,600);
  vertex(200,600);
  endShape(CLOSE);
}
