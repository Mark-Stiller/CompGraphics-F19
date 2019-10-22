float theta = 0;

void setup(){
  size(200,200);
}

void draw(){
  background(255);
  translate(width/2,height/2);
  rotate(radians(theta));
  
  line(-50,0,50,0);
  fill(170);
  circle(-50,0,10);
  circle(50,0,10);
  theta+=5;
}
