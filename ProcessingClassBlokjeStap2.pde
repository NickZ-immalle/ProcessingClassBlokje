void setup() 
{
size(300, 300);
frameRate(30);
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
  
}