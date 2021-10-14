int score;

Ball ball;
Paddle paddle;

void setup()
{
  size(800, 600);
  ball = new Ball();
  paddle = new Paddle();
  frameRate(60);
  score = 0;
  //fill(255);
  //text("score",width/2,height/2);
}


void draw()
{

  background(254, 244, 232);
  ball.draw();
  ball.move();
  paddle.draw();
  paddle.keyPressed();


  textSize(250);
  fill(0, 0, 0, 50);
  textAlign(CENTER, CENTER);
  text(score, width/2, (height/2)-50);

  //println(score);

  if (ball.position.x + 15 > 780 && ball.position.y > paddle.position.y && ball.position.y < paddle.position.y + 100)
  {
    ball.velocity.x = -1*ball.velocity.x;
    score = score + 1;
  } else if (ball.position.x + 15 > 800)
  {
    background(255, 0, 0);
    textSize(165);
    fill(0, 0, 0);
    textAlign(CENTER, CENTER);
    text("GAME OVER", width/2, height/2);
    noLoop();
  }
}
