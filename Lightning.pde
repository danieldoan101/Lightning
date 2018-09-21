int startX = 50;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  background(0, 0, 0);
  //draw lightning bolt
  fill(255, 255, 0);
  beginShape();
  vertex(50, 150);
  vertex(25,210);
  vertex(50,210);
  vertex(50,250);
  vertex(75,190);
  vertex(50,190);
  endShape(CLOSE);
  strokeWeight(5);
  noLoop();
}
void draw()
{
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endX<300){
  	endX = startX + ((int)(Math.random()*10));
    endY = startY + ((int)(Math.random()*19)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 50;
  startY = 150;
  endX = 0;
  endY = 150;
  redraw();
}