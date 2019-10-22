class Walker{
  
  float x,y;
  color c;
  
  Walker(int x, int y, color c){
    this.x = x;
    this.y = y;
    this.c = c;
  }
  
  void display(){
    stroke(0);
    fill(c);
    ellipse(x,y,8,8);
  }
  
  void step(){
    int dir = int(random(1,5));
    
    //movement and constraints
    if(dir==1 && x<width){
      x++;
    }
    else if(dir==2 && x>0){
      x--;
    }
    else if(dir==3 && y<height){
      y++;
    }
    else if(dir==4 && y>0){
      y--;
    }
  }
  
}
