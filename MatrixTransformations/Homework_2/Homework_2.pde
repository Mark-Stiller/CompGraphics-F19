Baton_3D[] batons;

void setup(){
  size(600,600,P3D);
  
  batons = new Baton_3D[6];
  for(int i=0; i<batons.length; i++){
    //x, y, and z are all randomly decided. I went with a minimum of 50, and anything larger than 150 makes it hard to see most of the time
    batons[i] = new Baton_3D(random(50,150), random(50,150), random(50,150), random(.01,.04), random(15,30));
  }
}

void draw(){
  background(255);
  
  translate(width/2,height/2);
  fill(255,255,0);
  sphere(50);
  
  for(int i=0; i<batons.length; i++){
    batons[i].display();
    batons[i].update();
  }
  
}
