class Mover {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector mouse;
    
  Mover() {
    location = new PVector(width/2, height/2);
    mouse = new PVector(mouseX, mouseY);    
    velocity = new PVector(0.0, 0.0);
  }
  
  void edgesBounce() {   
    
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }
    if ((location.y > height) || (location.y < 0)) {
      velocity.y = velocity.y * -1;
    }
  }
  
  void edgesInfinite() {
     
    if (location.x < 0) location.x = width;
    if (location.y < 0) location.y = height;
    if (location.x > width) location.x = 0;
    if (location.y > height) location.y = 0;
    
  }
  
  void update() {
    acceleration = PVector.random2D();
    velocity.add(acceleration);  
    velocity.limit(5);
    location.add(velocity);  
  }
  
  void display () {
    clear ();
    noStroke();
    lights();
    translate(location.x, location.y, 0);
    sphere(32);
  }
  
}