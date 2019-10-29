float theta=0;

Planet[] planets;

void setup(){
  size(600,600,P3D);
  
  planets = new Planet[4];
  
  for(int i=0; i<planets.length; i++){
    planets[i]=new Planet(random(30,50), random(150,250), random(.01,.02), (int)random(0,3));
  }
}

void draw(){
  background(255);
  //sun
  translate(width/2, height/2);
  noStroke();
  lights();
  fill(255,255,100);
  sphere(30);
  
  for(int i=0; i<planets.length; i++){
    planets[i].display();
    planets[i].update();
  }
  
}
