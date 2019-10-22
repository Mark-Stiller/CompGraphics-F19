//Ball bol;
Ball[] bols;

void setup(){
  size(400,400);
  
  //bol = new Ball(2,-3,color(140,0,50));
  bols = new Ball[10];
  for(int i = 0; i < bols.length; i++){
    bols[i] = new Ball(random(1,5), random(1,5), color(random(255),random(255),random(255)), (int)random(10,31));
  }
}

void draw(){
  background(255);
  //bol.move();
  //bol.display();
  for(int i = 0; i < bols.length; i++){
    bols[i].move();
    bols[i].display();
  }
}
