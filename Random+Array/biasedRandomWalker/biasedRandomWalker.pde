Walker[] walkers;
ImprovedWalker[] impWalkers;

void setup() {
  size(400, 400);

  walkers = new Walker[10];
  impWalkers = new ImprovedWalker[10];
  
  for(int i=0; i<walkers.length; i++){
    walkers[i] = new Walker((int)random(width), (int)random(height), color(random(255)));
  }
  for(int i=0; i<impWalkers.length; i++){
    impWalkers[i] = new ImprovedWalker((int)random(width), (int)random(height), color(random(255),random(255),random(255)));
  }
}

void draw() {
  background(255);
  
  for(int i=0; i<walkers.length;i++){
    walkers[i].step();
    walkers[i].display();
  }
  for(int i=0; i<impWalkers.length;i++){
    impWalkers[i].step();
    impWalkers[i].display();
  }
}
