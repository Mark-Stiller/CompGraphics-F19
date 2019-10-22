void setup(){
  size(600,400);
  background(255);
}

void draw(){
  //divisor = number of squares
  int w=width/5;
  int h=height/5;
  
  for(int x=0; x<width; x+=w){
    for(int y=0; y<height; y+=h){
      fill(int(random(0,256)),int(random(0,256)),int(random(0,256)));
      rect(x,y,w,h);
    }
  }
  
  frameRate(4);
}
