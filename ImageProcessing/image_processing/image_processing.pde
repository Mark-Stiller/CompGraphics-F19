PImage img;

void setup(){
  size(320,240);
  //image file preloaded into sketch
  img = loadImage("runde_bird_cliffs.jpg");
}
void draw(){
  background(255);
  //imageMode(CENTER);
  image(img,0,0,width/2,height/2);
}
