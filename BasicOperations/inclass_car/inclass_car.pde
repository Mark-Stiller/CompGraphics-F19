Car myCar;
Car myCar1;
Car myCar2;

void setup(){
  size(500,400);
  myCar = new Car();
  myCar1 = new Car(color(255,0,0), 0, height/4, 3);
  myCar2 = new Car(color(0,0,255), 0, (random(0,height)), random(1,5));
}

void draw(){
  background(255);
  myCar.move();
  myCar.display();
  
  myCar1.move();
  myCar1.display();
  
  myCar2.move();
  myCar2.display();
}
