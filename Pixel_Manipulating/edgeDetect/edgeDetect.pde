PImage source,destination;

void setup(){
  size(400,400);
  source = loadImage("circles.jpg");
  destination = createImage(source.width,source.height, RGB);
}
void draw(){
  background(255);
  source.loadPixels();
  destination.loadPixels();
  
  threshold = map(mouseX, 0, width, 0, 256);
  
  //loop through all pixels
  for(int x=0; x<source.width-1; x++){
    for(int y=0; y<source.height; y++){
      
      int loc = x + y*source.width;
      int rightLoc = (x+1) + y*source.width;
      
      float bn = brightness(source.pixels[loc]);
      float rightBn = brightness(source.pixels[rightLoc]);
      
      destination.pixels[loc] = color(Math.abs(bn-rightBn));
      
      //float lum = brightness(source.pixels[loc]);
      //destination.pixels[loc]=color(lum);
      
    }
  }
  
  destination.updatePixels();
  image(destination, 0, 0, destination.width, destination.height);
  
}
