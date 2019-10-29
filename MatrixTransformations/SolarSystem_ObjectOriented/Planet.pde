class Planet{
  float theta, diameter, distance, orbitSpeed;
  Moon[] moons;
  
  Planet(float diameter, float distance, float orbitSpeed, int moons){
    this.theta=0;
    this.diameter=diameter;
    this.distance=distance;
    this.orbitSpeed=orbitSpeed;
    this.moons=new Moon[moons];
    for(int i=0;i<this.moons.length;i++){
      this.moons[i] = new Moon(random(10,20), random(30,40), random(.03,.04));
    }
  }
  
  void display(){
    //store sun/existing coord system/transformation state
    pushMatrix();
    
    //planet
    rotate(theta);
    translate(distance,0);
    fill(75,200,255);
    sphere(diameter/2);
    
    for(int i=0; i<this.moons.length; i++){
      moons[i].display();
      moons[i].update();
    }
    
    //restore previous state
    popMatrix();
  }
  
  void update(){
    theta+=orbitSpeed;
  }
}
