class Paddle
{
  PVector position;
  PVector velocity;

  Paddle()
  {
    position = new PVector(width-20, (height/2)-50);
    velocity = new PVector(0, 4);
  }

  void draw()
  {
    noStroke();
    fill(0);
    rect(position.x, position.y, 20, 100);
    if (position.y + 125 < 0)
    {
      //println("inside collision top");
      position.y = 600 - 125;
    } else if (position.y > 600)
    {
      //println("inside collision bottom");
      position.y = 0;
    }
  }

  void keyPressed()
  {
    if (key == 'w')
    {
      //println("inside w condtion");
      position.y = position.y - velocity.y;
    }
    if (key == 's')
    {
      //println("inside s condition");
      position.y = position.y + velocity.y;
    }
  }
}
