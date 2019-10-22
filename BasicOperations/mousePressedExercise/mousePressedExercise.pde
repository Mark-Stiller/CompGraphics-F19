void setup(){
  size(200,200);
  background(255);
}

void draw(){
  
}

void mousePressed(){
  rectMode(CENTER);
  //I wanted it to be colorful so I made it colorful
  fill(mouseX+55, (mouseX+mouseY)/2+55, mouseY+55);
  rect(mouseX, mouseY, 16, 16);
}

void keyPressed(){
  background(255);
  println("Key pressed: " + key);
}
