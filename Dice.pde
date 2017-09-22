void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(156, 27, 222);
  int sum = 0;
  for (int y = 40; y <= 475; y = y + 75)
  {
    for (int x = 40; x <= 475; x = x + 75)
    {
      Die bug = new Die(x, y);
      bug.show();
      bug.roll();
      sum = sum + bug.number;
    }
  }
  textSize(30);
  text("Number of Dots:", 100, 490);
  text(sum, 350, 490);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int number, myX, myY;
  Die(int x, int y) 
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    number = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(238, 242, 32);
    rect(myX, myY, 50, 50, 20);
    fill(200, 0, 0);
    if (number == 1)
    {
      ellipse(myX + 25, myY + 25, 7, 7);
    }
    if (number == 2)
    {
      ellipse(myX + 35, myY + 15, 7, 7);
      ellipse(myX + 15, myY + 35, 7, 7);
    }
    if (number == 3)
    {
      ellipse(myX + 25, myY + 25, 7, 7);
      ellipse(myX + 15, myY + 35, 7, 7);
      ellipse(myX + 35, myY + 15, 7, 7);
    }
    if (number == 4)
    {
      ellipse(myX + 35, myY + 35, 7, 7);
      ellipse(myX + 15, myY + 35, 7, 7);
      ellipse(myX + 35, myY + 15, 7, 7);
      ellipse(myX + 15, myY + 15, 7, 7);
    }
    if (number == 5)
    {
      ellipse(myX + 35, myY + 35, 7, 7);
      ellipse(myX + 15, myY + 35, 7, 7);
      ellipse(myX + 35, myY + 15, 7, 7);
      ellipse(myX + 15, myY + 15, 7, 7);
      ellipse(myX + 25, myY + 25, 7, 7);
    }
    if (number == 6)
    {
      ellipse(myX + 35, myY + 35, 7, 7);
      ellipse(myX + 15, myY + 35, 7, 7);
      ellipse(myX + 35, myY + 15, 7, 7);
      ellipse(myX + 15, myY + 15, 7, 7);
      ellipse(myX + 35, myY + 25, 7, 7);
      ellipse(myX + 15, myY + 25, 7, 7);
    }
  }
}