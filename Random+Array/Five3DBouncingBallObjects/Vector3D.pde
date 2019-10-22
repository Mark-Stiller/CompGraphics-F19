class Vector3D{
   //field variables
  float x;
  float y;
  float z;
  
  //constructor
  Vector3D(float x, float y, float z){
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
  //functions
  void add(Vector3D v){
    x = x + v.x;
    y = y + v.y;
    z = z + v.z;
  }
  
   void sub(Vector3D v){
    x = x - v.x;
    y = y - v.y;
    z = z - v.z;
  }
  
  void mult(float n){
    x*=n;
    y*=n;
    z*=n;
  }
  
  float mag(){
    return sqrt((x*x)+(y*y)+(z*z));
  }
  void normalize(){
   float m = mag();
   if(m!=0)
     mult(1/m);
  }
}
