PImage img;

void setup(){
  size(200,200);
  img = loadImage("sunflower.jpg");
}
void draw(){
  loadPixels();
  
  //loop through columns
  for(int x=0; x<img.width; x++){
    //loop through row of each column
    for(int y=0; y<img.height; y++){
      int loc=x+y*img.width;
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      //image processing code goes here
      
      pixels[loc]=color(r,g,b);
      //pixels[loc]=color(2*r,2*g,2*b);
    }
    
}

updatePixels();
}
