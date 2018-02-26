blokjes blokje1 = new blokjes(mouseY, mouseX); 
blokjes blokje2 = new blokjes(mouseX, mouseY); 

void setup() 
{
size(300, 300);
frameRate(1);
}

int value = 0;

void draw() { 
background(255);
fill(value);
blokje1.update();
blokje2.update();
rect(mouseX, mouseY, 10, 10);
} 

void mousePressed() {
  mouseX += 1;
  mouseY += 1;
}

class blokjes{
  float mouseY, mouseX; 
  blokjes (float y, float x) {  
    mouseY = y; 
    mouseX = x;
}
}

void update() { 
    mouseX += 1; 
    mouseY += 1; 
    if (mouseX != mouseY) { 
      mouseX += 1; 
      mouseY += 1;
    } 
    blokjes(mouseX, mouseY);
  } 