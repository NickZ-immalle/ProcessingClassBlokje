blokjes blokje1 = new blokjes(width / 2, height / 2, color(0, 0, 255));
blokjes blokje2 = new blokjes(width / 2, height / 2, color(255, 0, 255));

void setup() 
{
  size(300, 300);
  frameRate(1);
}

int value = 0;

void draw() 
{ 
  background(255);
  
  blokje1.update();
  blokje2.update();
  
  rect(mouseX, mouseY, 10, 10);
  
  if(mousePressed == true){
  blokje1.changeColor(color(255, 0, 0));
  blokje2.changeColor(color(255, 0, 0));
  }
} 

void mousePressed()
{
  width += 1;
  height += 1;
}

class blokjes
{
  float height, width;
  color kleur = color(0, 225, 0);
  blokjes (float h, float w, color c) {
    height = h; 
    width = w;
    kleur = c;
}
  void update() 
  {
  if (mousePressed == true) { 
    blokjes.w += 1;
    blokjes.h += 1;
    } 
    stroke(kleur);
  }

  void changeColor(color c) {
    kleur = c; 
  }
 }