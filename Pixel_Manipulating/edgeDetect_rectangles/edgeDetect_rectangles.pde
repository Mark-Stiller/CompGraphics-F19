PImage source,destination;

void setup(){
  size(400,400);
  source = loadImage("rectangles.jpg");
  destination = createImage(source.width,source.height, RGB);
}
void draw(){
  background(255);
  source.loadPixels();
  destination.loadPixels();
  
  //loop through all pixels
  for(int x=0; x<source.width-1; x++){
    for(int y=1; y<source.height; y++){
      
      int loc = x + y*source.width;
      int rightLoc = (x+1) + y*source.width;
      int upLoc = x + (y-1)*source.width;
      
      float diffX = Math.abs(brightness(source.pixels[loc])-brightness(source.pixels[rightLoc]));
      float diffY = Math.abs(brightness(source.pixels[loc])-brightness(source.pixels[upLoc]));
      float diff = diffX+diffY;
      destination.pixels[loc] = color(diff*4);
      
      //float lum = brightness(source.pixels[loc]);
      //destination.pixels[loc]=color(lum);
      
    }
  }
  
  destination.updatePixels();
  image(destination, 0, 0, destination.width, destination.height);
  
}
