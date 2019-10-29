class Moon{
  float theta, diameter, distance, orbitSpeed;
  
  Moon(float diameter, float distance, float orbitSpeed){
    this.theta=0;
    this.diameter=diameter;
    this.distance=distance;
    this.orbitSpeed=orbitSpeed;
  }
  
  void display(){
    
    pushMatrix();
    rotate(theta);
    translate(distance,0);
    fill(170);
    sphere(diameter/2);
    popMatrix();
  }
  
  void update(){
    theta+=orbitSpeed;
  }
}
