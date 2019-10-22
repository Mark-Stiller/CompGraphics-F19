class Vector2D{
   //field variables
  float x;
  float y;
  
  //constructor
  Vector2D(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  //functions
  void add(Vector2D v){
    x = x + v.x;
    y = y + v.y;
  }
  
   void sub(Vector2D v){
    x = x - v.x;
    y = y - v.y;
  }
  
  void mult(float n){
    x*=n;
    y*=n;
  }
  
  float mag(){
    return sqrt((x*x)+(y*y));
  }
  void normalize(){
   float m = mag();
   if(m!=0)
     mult(1/m);
  }
}
