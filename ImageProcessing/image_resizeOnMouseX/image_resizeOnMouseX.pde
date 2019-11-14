PImage img;

void setup(){
  size(400,400);
  //image filepath referenced
  img = loadImage("../Images/runde_bird_cliffs.jpg");
}
void draw(){
  background(255);
  //img.width and img.height are type int, must cast/convert
  float aspectRatio=(float)img.width/img.height;
  image(img,0,0,mouseX,mouseX/aspectRatio);
}
