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
  
  if(mousePressed && mouseButton == RIGHT){
  blokje1.update();
  blokje2.update();
  }  
    if(mousePressed && mouseButton == LEFT){
  blokje1.grow();
  blokje2.grow();
 }
  if(keyPressed && key == CODED) {
    switch(keyCode) {
      case UP:
        print("direction set to UP\n");
        blokje1.goUp();
        blokje2.goUp();
        break;
      case DOWN:
        print("direction set to DOWN\n");
        blokje1.goDown();
        blokje2.goDown();
        break;
      case LEFT:
        print("direction set to LEFT\n");
        blokje1.goLeft();
        blokje2.goLeft();
        break;
      case RIGHT:
        print("direction set to RIGHT\n");
        blokje1.goRight();
        blokje2.goRight();
        break;
      default:
        blokje1.goManual(1, 1);
        blokje2.goManual(1, 1);
        break;
    }
  }
} 

class blokjes{
  int w;
  int h;
  int x;
  int y;
  int startingWidth;
  int startingHeight;
  int xRichting = 1;
  int yRichting = 1;
  color kleur = color(255, 100, 255);
  
  blokjes (int height, int width, int x, int y, color c) {
    h = height; 
    w = width;
    startingWidth = w;
    startingHeight = h;
    this.x = x;
    this.y = y;
    c = kleur;
}

void update() {
    x += xRichting;
    y += yRichting;
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
 
 void grow() {
    w += 1;
    h += 1;
  }
  
  void goUp() {
    xRichting = 0;
    yRichting = -1;
  }
  
  void goDown() {
    xRichting = 0;
    yRichting = 1;
  }
  
  void goLeft() {
    xRichting = -1;
    yRichting = 0;
  }
  
  void goRight() {
    xRichting = 1;
    yRichting = 0;
  }
  
  void goManual(int xRichting, int yRichting) {
    this.xRichting = xRichting;
    this.yRichting = yRichting;
  }
}