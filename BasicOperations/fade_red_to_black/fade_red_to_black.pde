int r = 255;
int g = 0;
int b = 0;

void setup(){
  size(200,200);
  background(r, g, b);
  //dividing line)
  stroke(255);
  line(0,100, 200,100);
}

void draw(){
  if(mouseY < 100){
    r++;
  }
  else {
    r--;
  }
  
  r = constrain (r, 0,255);
  
  background(r,g,b);
  //dividing line)
  stroke(255);
  line(0,100, 200,100);
  
  
  println("r="+r);
}
