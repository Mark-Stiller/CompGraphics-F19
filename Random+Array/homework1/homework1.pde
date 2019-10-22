void setup(){
  size(600,600);
}

//background setup
boolean black=false;
void mousePressed(){
  //fill color
  black = !black;
}
  
//output for key pressed
//Processing won't register a key pressed until the mouse is clicked on the window for some reason.
void keyPressed(){
  println("Mark Stiller");
  println("September 3, 2019");
}

void draw(){
  //background starts white and changes every click
  if(black){
    background(0);
  }
  else background(255);
  
  //fill color
  //The window size is about twice 255, so the values get halved for a better gradient.
  //The Green color component is flipped so there is always some color.
  fill(mouseX/2, (255-mouseY/2), mouseX+mouseY/4);
  
  //circles
  //measuring from the center, all are 100 pixels apart from their neighbours
  int d=1;
  for(int x = -200; x<300; x+=100){
    ellipse(mouseX+x, mouseY, d*20,d*20);
    d++;
  }
}
