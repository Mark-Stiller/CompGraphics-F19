float radius=200;
float angle=0;
float scalar = 1;
String view = "";

void setup(){
  size(400,400,P3D);
}

void draw(){
  background(255);
  translate(width/2,height/2);
  camera(radius*cos(angle),100,radius*sin(angle),  0,0,0,  0,1.0,0);
  
  fill(0);
  textSize(20);
  text(view, 10, 30);
  
  scale(scalar);
  drawCube(50);
  
  angle+=.01;  
  
  
  if(keyPressed){
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
