blokjes blokje1 = new blokjes(100, 100, 60, 20, color(0, 255, 255));
blokjes blokje2 = new blokjes(40, 10, 10, 20, color(255, 0, 255));

void setup() {
  size(300, 300);
  frameRate(10);
}

void draw() { 
  background(255);
  blokje1.draw();
  blokje2.draw();
  
  if(mousePressed && mouseButton == LEFT){
  blokje1.update();
  blokje2.update();
 }
} 

class blokjes{
  int w;
  int h;
  int x;
  int y;
  color kleur = color(255, 100, 255);
  
  blokjes (int height, int width, int x, int y, color c) {
    h = height; 
    w = width;
    this.x = x;
    this.y = y;
    c = kleur;
}

void update() {
    w += 1;
    h += 1;
    
   stroke(kleur);
   
   blokje1.changeColor(color(255, 0, 0));
   blokje2.changeColor(color(0, 255, 0));
  }
    void draw() {
    rect(x, y, w, h);
  }
 
   void changeColor(color c) {
    c = kleur; 
 }
}
