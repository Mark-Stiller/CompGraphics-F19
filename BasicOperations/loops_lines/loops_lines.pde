void setup(){
  size(200,200);
  background(255);
}

void draw(){
  for (int y=0; y<=200; y+=10){
    line(0,y,200,y);
  }
}
