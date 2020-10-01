void setup() {
  size (600,650);
  textAlign(CENTER,CENTER);
  noLoop();
}

int total = 0;

void draw() 
{
  background(255);
  int j = 0;
  while(j < 10) 
  {
  int i = 0;
  while(i < 10) 
  {
  Die chia = new Die(60 * i,60 * j);
  chia.show();
  i++;
  }
  j++;
  }
  text("Total: " + total,300,625);
}

void mousePressed() 
{
  total = 0;
  redraw();
}

class Die 
{
  int myX, myY, num;
  
  Die(int x, int y) //constructor
  { 
    roll();
    myX = x;
    myY = y;
  }
  
  void roll() 
  {
    num = (int)(Math.random() * 6) + 1;
    total +=num;
  }
  
  void show() 
  {
    noStroke();
    fill((int)(Math.random() * 255) + 1, (int) (Math.random() * 255) + 1, (int) (Math.random() * 255) + 1);
    rect(myX,myY,50,50,10);
    fill(0);
    if(num == 1) 
    {
      fill(0);
      ellipse(myX + 25,myY + 25,10,10);
    }
    if(num == 2) 
    {
      fill(0);
      ellipse(myX + 10, myY + 10,10,10);
      ellipse(myX + 40, myY + 40,10,10);
    }
    if(num == 3) 
    {
      fill(0);
      ellipse(myX + 40, myY + 10,10,10);
      ellipse(myX + 25, myY + 25,10,10);
      ellipse(myX + 10, myY + 40,10,10);
    }
    if(num == 4) 
    {
      fill(0);
      ellipse(myX + 10, myY + 10,10,10);
      ellipse(myX + 40, myY + 10,10,10);
      ellipse(myX + 10, myY + 40,10,10);
      ellipse(myX + 40, myY + 40,10,10);
    }
    if(num == 5) 
    {
      fill(0);
      ellipse(myX + 10, myY + 10,10,10);
      ellipse(myX + 40, myY + 10,10,10);
      ellipse(myX + 25, myY + 25,10,10);
      ellipse(myX + 10, myY + 40,10,10);
      ellipse(myX + 40, myY + 40,10,10);
    }
    if(num == 6) 
    {
      fill(0);
      ellipse(myX + 10, myY + 10,10,10);
      ellipse(myX + 40, myY + 10,10,10);
      ellipse(myX + 10, myY + 25,10,10);
      ellipse(myX + 40, myY + 25,10,10);
      ellipse(myX + 10, myY + 40,10,10);
      ellipse(myX + 40, myY + 40,10,10);
    }
  }
}
