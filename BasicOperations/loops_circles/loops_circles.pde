void setup(){
  size(200,200);
  background(255);
}

void draw(){
  for (int r=200; r>=0; r-=20){
    fill(r);
    ellipse(100,100,r,r);
  }
}
