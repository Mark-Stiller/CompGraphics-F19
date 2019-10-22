Ball ball;

Ball[] bols;

void setup(){
  size(400,400,P3D);
  
  ball = new Ball(1,2,3,color(127),5);
  bols = new Ball[5];
  for(int i = 0; i < bols.length; i++){
    bols[i] = new Ball(random(1,5), random(1,5), random(1,5), color(random(255),random(255),random(255)), random(10,30));
  }
}

void draw(){
  lights();
  translate(200,200,-200);
  background(255);
  noFill();
  stroke(0);
  box(300);
  
  ball.move();
  ball.display();
  
  for(int i = 0; i < bols.length; i++){
    bols[i].move();
    bols[i].display();
  }
}
