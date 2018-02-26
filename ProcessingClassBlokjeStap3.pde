blokjes blokje1 = new blokjes(mouseY, mouseX); 
blokjes blokje2 = new blokjes(mouseX, mouseY); 

void setup() 
{
size(300, 300);
frameRate(120);
}

int value = 0;

void draw() { 
background(0);
fill(value);
rect(mouseX, mouseY, 10, 10);
} 

void mousePressed() {
  if (value == 0) {
  value = 255;
} else {
  value = 0;
}
}

class blokjes{
  float mouseY, mouseX; 
  blokjes (float y, float x) {  
    mouseY = y; 
    mouseX = x;
}
}