PImage img;
float s=0;

void setup(){
  size(600,600);
  //image file preloaded into sketch
  img = loadImage("runde_bird_cliffs.jpg");
}
void draw(){
  background(255);
  translate(width/2,height/2);
  scale(s);
  imageMode(CENTER);
  image(img,0,0);
  s+=.01;
  if(s>2){
    s=0;
  }
}
