import ddf.minim.*;
PImage pictureOfRecord;
Minim minim;
AudioPlayer song;
int angle = 0;
void setup(){
  minim = new Minim(this);
  song = minim.loadFile("song.wav", 512);
  size(1000, 1000);
  pictureOfRecord = loadImage("record.png");
}
void draw(){
  rotateImage(pictureOfRecord, angle);
  image(pictureOfRecord, 0, 0);
  if(mousePressed){
  angle += 3;
  song.play();
  }
  else{
    song.pause();
  }
}
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}