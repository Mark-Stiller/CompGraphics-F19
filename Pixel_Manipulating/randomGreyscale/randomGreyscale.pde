size(200,200);
loadPixels();
for(int i=0; i<pixels.length; i++){
  color c = color(random(255));
  
  pixels[i]=c;
}
updatePixels();
