blokjes blokje1 = new blokjes(width / 2, height / 2); 
blokjes blokje2 = new blokjes(width / 2, height / 2); 

void setup() 
{
size(300, 300);
frameRate(1);
}

int value = 0;

void draw() 
{ 
background(255);
fill(value);
blokje1.update();
blokje2.update();
rect(mouseX, mouseY, 10, 10);
} 

void mousePressed()
{
width += 1;
height += 1;
}

class blokjes
{
  float mouseY, mouseX; 
  blokjes (float y, float x) {  
    mouseY = y; 
    mouseX = x;
}
}

void update() 
{ 
width +=1;
height+= 1;
} 