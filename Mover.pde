class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float x;
  float y;
  float m;
  float topSpeed;
  color c;
  
  Mover(float x, float y, float m, color c){
    this.x = x;
    this.y = y;
    this.m = m;
    this.c = c;
    location = new PVector(this.x, this.y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    topSpeed = 20;
  }
  
  void display(){
    noStroke();
    fill(this.c);
    ellipse(location.x, location.y, 20*this.m, 20*this.m);
  }
  
  void applyForce(PVector f){
    PVector force = PVector.div(f, this.m);
    acceleration.add(force);
  }
  
  void update(){
      velocity.add(acceleration);
      velocity.limit(topSpeed);
      location.add(velocity);
      acceleration.mult(0);
    }
  
}