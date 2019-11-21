PImage source,destination;
float threshold;

void setup(){
  size(400,400);
  source = loadImage("sunflower.jpg");
  destination = createImage(source.width,source.height, RGB);
}
void draw(){
  background(255);
  source.loadPixels();
  destination.loadPixels();
  
  threshold = map(mouseX, 0, width, 0, 256);
  
  //loop through all pixels
  for(int x=0; x<source.width; x++){
    for(int y=0; y<source.height; y++){
      
      int loc = x + y*source.width;
      
      float lum = brightness(source.pixels[loc]);
      
      destination.pixels[loc]=color(lum);
      
    }
  }
  
  destination.updatePixels();
  image(destination, 0, 0, destination.width*.5, destination.height*.5);
  
}
