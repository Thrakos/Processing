void setup(){
  size(500,500);
}
void draw(){
 fill(mouseX,mouseY,mouseX);
 ellipse(mouseX,mouseY,mouseY,mouseX);
 fill(mouseX,mouseY,mouseY); 
 ellipse(mouseY,mouseX,mouseX,mouseY);
}
