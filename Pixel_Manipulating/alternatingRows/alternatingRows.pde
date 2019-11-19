size(200,200);
loadPixels();

//loop through columns
for(int x=0; x<width; x++){
  //loop through row of each column
  for(int y=0; y<height; y++){
    //use x for vertical lines or y for horizontal
    if(x%2==0){
      pixels[x+y*width]=color(0);
    }
    else if(x%2!=0){
      pixels[x+y*width]=color(255);
    }
  }
  
}

updatePixels();
