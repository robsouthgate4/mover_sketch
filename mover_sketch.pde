Mover mover;

void setup() {    
  size(800, 600, P3D);
  background(255);
  mover = new Mover();
}

void draw() {

  mover.update();
  mover.edgesBounce();
  mover.display();

}