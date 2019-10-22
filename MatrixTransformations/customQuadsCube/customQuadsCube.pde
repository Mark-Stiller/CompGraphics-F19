float thetaX, thetaY, thetaZ = 0;
float scalar = 1;
String view = "";

void setup(){
  size(600,600,P3D);
}

void draw(){
  background(255);
  
  fill(0);
  textSize(20);
  text(view, 10, 30);
  
  translate(width/2,height/2);
  rotateX(thetaX);
  rotateY(thetaY);
  rotateZ(thetaZ);
  scale(scalar);
  
  drawCube(100);
  
  
  if(keyPressed){
    if(key=='x'){
      thetaX-=0.02;
      view="";
    }
    else if(key=='X'){
      thetaX+=0.02;
      view="";
    }
    if(key=='y'){
      thetaY-=0.02;
      view="";
    }
    else if(key=='Y'){
      thetaY+=0.02;
      view="";
    }
    if(key=='z'){
      thetaZ-=0.02;
      view="";
    }
    else if(key=='Z'){
      thetaZ+=0.02;
      view="";
    }
    if(key=='r'){
      thetaY=thetaZ=thetaX=0;
      view="";
    }
    
    //1 key front 2 key back 3 key top 4 bottom 5 right 6 left
    if(key=='1'){
      thetaX=thetaY=thetaZ=0;
      view="Front view";
    }
    else if(key=='2'){
      thetaX=-PI;
      thetaY=thetaZ=0;
      view="Back view";
    }
    else if(key=='3'){
      thetaX=-PI/2;
      thetaY=thetaZ=0;
      view="Top view";
    }
    else if(key=='4'){
      thetaX=PI/2;
      thetaY=thetaZ=0;
      view="Bottom view";
    }
    else if(key=='5'){
      thetaY=-PI/2;
      thetaX=thetaZ=0;
      view="Right view";
    }
    else if(key=='6'){
      thetaY=PI/2;
      thetaX=thetaZ=0;
      view="Left view";
    }
    
    if(key=='+'){
      scalar+=.02;
    }
    else if(key=='-'){
      scalar-=.02;
    }
  }
}

void drawCube(float t){
  noStroke();
  beginShape(QUADS);
  
  //front abcd red
  fill(255,0,0);
  vertex(-t,-t,t);
  vertex(t,-t,t);
  vertex(t,t,t);
  vertex(-t,t,t);
  
  //back efgh yellow
  fill(255,255,0);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(-t,t,-t);
  
  //top aefb blue
  fill(0,0,255);
  vertex(-t,-t,t);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(t,-t,t);
  
  //bottom dhgc magenta
  fill(255,0,255);
  vertex(-t,t,t);
  vertex(-t,t,-t);
  vertex(t,t,-t);
  vertex(t,t,t);
  
  //right bfgc green
  fill(0,255,0);
  vertex(t,-t,t);
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(t,t,t);
  
  
  //left aehd cyan
  fill(0,255,255);
  vertex(-t,-t,t);
  vertex(-t,-t,-t);
  vertex(-t,t,-t);
  vertex(-t,t,t);
  
  endShape();
}

//a vertex(-t,-t,t);
//b vertex(t,-t,t);
//c vertex(t,t,t);
//d vertex(-t,t,t);
//e vertex(-t,-t,-t);
//f vertex(t,-t,-t);
//g vertex(t,t,-t);
//h vertex(-t,t,-t);
