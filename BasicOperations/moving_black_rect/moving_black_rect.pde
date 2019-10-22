void setup(){
  size(600,500);
}

void draw(){
  background(255);
  int x = width/2;
  int y = height/2;
  line(x,0,x,2*y);
  line(0,y,2*x,y);
  
  fill(0);
  if(mouseX<x && mouseY<y){
    rect(0,0,x,y);
  }
  else if(mouseX>x && mouseY<y){
    rect(x,0,x,y);
  }
  else if(mouseX<x && mouseY>y){
    rect(0,y,x,y);
  }
  else if(mouseX>x && mouseY>y){
    rect(x,y,x,y);
  }
}
