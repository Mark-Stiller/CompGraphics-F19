float thetaX, thetaY, thetaZ = 0;

void setup(){
  size(600,600,P3D);
}

void draw(){
  background(255);
  translate(width/2,height/2);
  rotateX(thetaX);
  rotateY(thetaY);
  rotateZ(thetaZ);
  //rotateX(PI*mouseY/height);
  //rotateY(PI*mouseX/width);
  
  drawPyramid(100);
  //theta+=.01;
  
  translate(150,0,0);
  drawPyramid(30);
  
  
  if(keyPressed){
    if(key=='x'){
      thetaX-=0.01;
    }
    else if(key=='X'){
      thetaX+=0.01;
    }
    if(key=='y'){
      thetaY-=0.01;
    }
    else if(key=='Y'){
      thetaY+=0.01;
    }
    if(key=='z'){
      thetaZ-=0.01;
    }
    else if(key=='Z'){
      thetaZ+=0.01;
    }
    if(key=='r'){
      thetaY=thetaZ=thetaX=0;
    }
  }
}

void drawPyramid(float t){
  noStroke();
  beginShape(QUADS);
  //base
  fill(100,100,100,127);
  vertex(-t,-t,0);
  vertex(-t,t,0);
  vertex(t,t,0);
  vertex(t,-t,0);
  endShape();
  
  beginShape(TRIANGLES);
  
  //left
  fill(0,255,0,127);
  vertex(-t,-t,0);
  vertex(-t,t,0);
  vertex(0,0,t);
  
  //bottom
  fill(0,0,255,127);
  vertex(-t,t,0);
  vertex(t,t,0);
  vertex(0,0,t);
  
  //right
  fill(255,255,0,127);
  vertex(t,t,0);
  vertex(t,-t,0);
  vertex(0,0,t);
  
  //top
  fill(255,0,255,127);
  vertex(t,-t,0);
  vertex(-t,-t,0);
  vertex(0,0,t);
  endShape();
}
