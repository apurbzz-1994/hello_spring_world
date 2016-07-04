class Spring{
  PVector anchor;
  float initialLength;
  float k;
  float x;
  float y;
  
  Spring(float x, float y, float k, float initialLength){
    this.x = x;
    this.y = y;
    this.k = k;
    this.initialLength = initialLength;
    anchor = new PVector(this.x, this.y);
  }
  
  void springForce(Mover b){
    PVector force = PVector.sub(b.location, anchor);
    float currentLength = force.mag();
    float extension = currentLength - this.initialLength;
    force.normalize();
    force.mult(-1*this.k*extension);
    b.applyForce(force);
  }
  
  void displayAnchor(){
    rectMode(CENTER);
    rect(anchor.x, anchor.y, 5, 5);
  }
  
  void displayString(Mover b){
    stroke(0);
    strokeWeight(2);
    line(b.location.x, b.location.y,anchor.x, anchor.y);
  }
  
  
}