class Baton_3D{
  
  float x, y, z;  //need (-x,-y,-z for other end)
  float angle;    //for rotation
  float speed;    //for rotation
  float radius;   //for spheres

  public Baton_3D(float x, float y, float z, float speed, float radius){
    this.x=x;
    this.y=y;
    this.z=z;
    this.angle=0;
    this.speed=speed;
    this.radius=radius;
  }
  
  void display(){
    //save state before making baton
    pushMatrix();
    
    rotateY(angle);
    
    line(x,y,z,-x,-y,-z);
    
    fill(0,255,255);
    //first baton sphere
    pushMatrix();
    translate(x,y,z);
    sphere(radius);
    popMatrix();
    //reset, second baton sphere
    pushMatrix();
    translate(-x,-y,-z);
    sphere(radius);
    popMatrix();
    
    popMatrix();
    //return to base state to prepare for other batons
  }
  
  void update(){
    angle+=speed;
  }

}
