int score = 0;
int randomNumber = (int) random(width);
int dropY = 0;
void setup(){
  size(500 , 500);
  background(0, 155, 105);
}

void draw(){
  background(0, 150, 105);
  fill(0, 0, 255);
  ellipse(randomNumber, dropY, 10, 10);
  noStroke();
  fill(119, 68, 34);
  rect(mouseX, 450, 30, 35);
  dropY += 5;
  if(dropY == 480){
     checkCatch(randomNumber);
     randomNumber = (int) random(width);
     dropY = 0;
     ellipse(randomNumber, dropY, 10, 10);
  }
  if(dropY == 500){
    randomNumber = (int) random(width);
    dropY = 0;
    ellipse(randomNumber, dropY, 10, 10);
  }
fill(0, 0, 0);
textSize(16);
text("Score: " + score, 20, 20);

}

void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Score: " + score);
}