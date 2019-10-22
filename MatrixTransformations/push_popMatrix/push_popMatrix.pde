float theta1,theta2,theta3=0;

void setup(){
  size(400,400,P3D);
}

void draw(){
  background(255);
  stroke(0);
  fill(175);
  rectMode(CENTER);
  //saving the current transformation matrix
  pushMatrix();
  translate(100,100);
  rotateZ(theta1);
  rect(0,0,100,100);
  //restore saved matrix
  popMatrix();
  
  //save again
  pushMatrix();
  translate(300,300);
  rotateY(theta2);
  rect(0,0,100,100);
  popMatrix();
  
  pushMatrix();
  translate(100,300);
  rotateX(theta3);
  rect(0,0,100,100);
  popMatrix();
  
  theta1+=.01;
  theta2+=.02;
  theta3+=.05;
}
