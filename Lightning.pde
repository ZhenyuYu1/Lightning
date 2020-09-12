int startX = (int)(Math.random()*200 + 50);
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  strokeWeight(3);
  background(255,255,255);
  frameRate(20);
}
void draw()
{
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  while(endX < 300 && endY < 300)
  {
    int randomX = (int)(Math.random()*18 - 9);
    int randomY = (int)(Math.random()*15);
    endX = startX + randomX;
    endY = startY + randomY;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  fill(50,50,50,100);
  rect(0,0,300,300);
}
void mousePressed()
{
  startX = (int)(Math.random()*200 + 50);
  startY = 0;
  endX = 150;
  endY = 0;
}
