PImage img;
float threshold;

void setup(){
  size(200,200);
  img=loadImage("sunflower.jpg");
}
void draw(){
  img.loadPixels();
  loadPixels();
  
  threshold = map(mouseX, 0, width, 0, 256);
  
  //loop through all pixels
  for(int x=0; x<img.width; x++){
    for(int y=0; y<img.height; y++){
      
      int imgLoc = x + y*img.width;
      int displayLoc = x + y*width;
      
      float lum = brightness(img.pixels[imgLoc]);
      
      pixels[displayLoc]=color(lum);
      
    }
  }
  
  updatePixels();
}
