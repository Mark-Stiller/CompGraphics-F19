Rotater[] rotaters;

void setup(){
  size(600,600);
  
  rotaters=new Rotater[20];
  for(int i=0; i<rotaters.length; i++){
    rotaters[i]=new Rotater();
  }
}

void draw(){
  background(255);
  
  for(int i=0; i<rotaters.length; i++){
    rotaters[i].display();
    rotaters[i].spin();
  }
}
