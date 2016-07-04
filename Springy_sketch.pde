Mover[] movers = new Mover[30];
Spring[] springs = new Spring[30];

void setup(){
  size(900,400);
  for(int i=0;i<movers.length;i++){
    float num = random(width);
    movers[i] = new Mover(num,300,random(1,3), color(random(255), random(100), 78, 100));
    springs[i] = new Spring(num, 5,0.02,160);
  }
}

void draw(){
    background(255);
   for(int i=0;i<movers.length;i++){
     springs[i].displayAnchor();
     springs[i].displayString(movers[i]);
     springs[i].springForce(movers[i]);
     
     movers[i].display();
     movers[i].update();
     
   }
   

}