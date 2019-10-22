Vector2D mouse;
Vector2D center;
void setup(){
  size(600,400);
}

void draw(){
  background(255);
  mouse = new Vector2D(mouseX,mouseY);
  center = new Vector2D(width/2,height/2);
  mouse.sub(center);
  mouse.normalize();
  mouse.mult(100); 
  
  translate(width/2,height/2);
  strokeWeight(2);
  line(0,0,mouse.x,mouse.y);
}
