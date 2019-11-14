PImage img;

void setup(){
  size(320,240);
  //image filepath referenced
  img = loadImage("../Images/runde_bird_cliffs.jpg");
}
void draw(){
  background(255);
  imageMode(CENTER);
  //follows the mouse position
  image(img,mouseX,mouseY,width/2,height/2);
}
