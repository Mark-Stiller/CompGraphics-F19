float theta=0;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  //sun
  translate(width/2, height/2);
  fill(255,255,100);
  circle(0,0,60);
  
  //store planet+moons
  pushMatrix();
  //planet rotates around sun
  rotate(theta);
  translate(150,0);
  fill(75,200,255);
  circle(0,0,30);
  
  pushMatrix();
  //first moon rotates around planet
  rotate(theta*2);
  translate(40,0);
  fill(50,255,100);
  circle(0,0,15);
  popMatrix();
  
  //second moon also rotates around planet
  rotate(theta*4);
  translate(25,0);
  fill(50,255,100);
  circle(0,0,10);
  
  popMatrix();
  
  //second planet
  pushMatrix();
  rotate(theta*-.75);
  translate(250,0);
  fill(75,200,255);
  circle(0,0,30);
  
  pushMatrix();
  rotate(theta*-1.2);
  translate(40,0);
  fill(50,255,100);
  circle(0,0,15);
  
  popMatrix();
  rotate(theta*-3);
  translate(25,0);
  fill(50,255,100);
  circle(0,0,10);
  
  popMatrix();
  
  theta+=.01;
}
