void setup(){
  size(200,200);
  background(255);
}

void draw(){
  noStroke();
  float r = random(1.0);
  
  if(r<.6){
    fill(255,0,0);
  }
  else if(r<.9){
    fill(0,0,255);
  }
  else fill(0,255,0);
  
  ellipse(random(width), random(height), 10,10);
}
