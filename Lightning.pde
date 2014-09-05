int startX=150;
int startY=10;
int endX=150;
int endY=0;

void setup()
{
  size(500,500);
  background(0);
  strokeWeight(50);
}
void draw()
{
  background(0);
  house();

  stroke(255,255,102);
  while(endY<500)
  {
    endX = startX+(int)(random(-9,9));
    endY = startY+(int)(random(0,9));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void keyPressed()
{
  startX=150; 
  startY=60;
  endX=150;
  endY=0;
  
}

void house()
{
  stroke(0);
  strokeWeight(2);
  //frame//
  fill(255,200,255);
  rect(205,375,100,100);
  //roof//
  fill(255,0,0);
  triangle(205,375,305,375,250,320);
  //door//
  fill(102,51,0);
  rect(245,425,20,50);
  //windows//
   fill(225);
   rect(215,390,20,20);
    rect(275,390,20,20);
    
}