float rotationalSpeed = -3;
//naming o for origin of circle
PVector o;

void rotate1(float theta, PVector o){
  float x2 = o.x*cos(theta) - o.y*sin(theta);
  float y2 = o.x*sin(theta) + o.y*cos(theta);
  
  o.x = x2;
  o.y = y2;
}

float convertDegreesToRadians(float d){
  d = d*PI/180;
  return d;
}

void setup(){
  size(600,600);
  o = new PVector(200,0);
}

void draw(){
  translate(height/2,width/2);
  background(255);
  fill(150,0,255);
  circle(o.x, o.y,50);
  //passing convertDegreesToRadians as an argument for rotate1() to save space
  rotate1(convertDegreesToRadians(rotationalSpeed), o);
}
