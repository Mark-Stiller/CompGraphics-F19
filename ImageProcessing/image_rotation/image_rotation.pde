PImage img;
float theta;

void setup(){
  size(600,600);
  //image file preloaded into sketch
  img = loadImage("runde_bird_cliffs.jpg");
}
void draw(){
  background(255);
  translate(width/2,height/2);
  rotate(theta);
  imageMode(CENTER);
  image(img,0,0);
  theta+=.01;
}
