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
      
      //map the range of values from a-b to the range of values from c-d
      float adjustBrightness = map(mouseX, 0, width, 0, 8);
      
      r=constrain(adjustBrightness*r,0,255);
      g=constrain(adjustBrightness*g,0,255);
      b=constrain(adjustBrightness*b,0,255);
      
      pixels[loc]=color(r,g,b);
    }
    
}

updatePixels();
}
