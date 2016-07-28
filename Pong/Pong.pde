int ballX = 600;
int ballY = 100;
int ballSpeedX = 10;
int ballSpeedY = 10;

void setup() {
  size(1200, 800);
}

void draw() {
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
  background(0, 221, 204);
  ellipse(ballX, ballY, 20, 20);
  fill(221, 0, 0);
  stroke(0, 0, 0);
  rect(mouseX, 750, 100, 15);
  if (ballX == 1190) {
    ballSpeedX = -ballSpeedX;
  } 
  else if (ballX == 10) {
    ballSpeedX = -ballSpeedX;
  }
  if (ballY == 790){
    ballSpeedY = 0;
    ballSpeedX = 0;
    textSize(100);
    text("GAME OVER", 300, 400);
    fill(0, 0, 0);
  }
  else if (ballY == 10){
    ballSpeedY = -ballSpeedY;
  }
  if(intersects(ballX, ballY + 10, mouseX, 750, 100))
  {
    ballSpeedY = -ballSpeedY;
  }
}

boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) {
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}

