class ImprovedWalker {

  int x,y;
  color c;
  
  ImprovedWalker(int x, int y, color c){
    this.x=x;
    this.y=y;
    this.c=c;
  }

  void display() {
    stroke(c);
    fill(c);
    ellipse(x,y,8,8);
  }

  void step() {
    //movement
    int choiceX = int(random(3))-1;
    int choiceY = int(random(3))-1;
    
    x+=choiceX;
    y+=choiceY;
    
    
    //constraints to keep them inside the window
    if(x<0) x=0;
    if(x>width)x=width;
    if(y<0) y=0;
    if(y>height) y=height;
  }
}
