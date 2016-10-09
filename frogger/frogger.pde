int frogX = 200;
int frogY = 380;
Car car1;
Car car2;
Car car3;
void setup() {
  size(400, 400);
  car1 = new Car(10, 50, 20, 10);
  car2 = new Car(-5, 50, 120, 200);
  car3 = new Car(7, 50, 220, 70);
}
void draw() {
  background(0, 55, 200);
  fill(0, 200, 55);
  ellipse(frogX, frogY, 20, 20);
  car1.drive();
  car1.display();
  car2.drive();
  car2.display();
  car3.drive();
  car3.display();
  if (intersects(car1)) {
    frogX = 200;
    frogY = 380;
  }
  if (intersects(car2)) {
    frogX = 200;
    frogY = 380;
  }
  if (intersects(car3)) {
    frogX = 200;
    frogY = 380;
  }
  if (frogY == 10) {
    text("YOU WON", 150, 200); 
    textSize(20);
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY -= 20;
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down
      frogY += 20;
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      frogX += 20;
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      frogX -= 20;
    }
  }
  stayInBounds();
}

void stayInBounds() {
  if (frogX <= 0) {
    frogX = 10;
  } else if (frogX >= 400) {
    frogX = 390;
  }
  if (frogY <= 0) {
    frogY = 10;
  } else if (frogY >= 400) {
    frogY = 390;
  }
}
class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  Car(int carSpeed, int carSize, int carY, int carX) {
    this.carSpeed = carSpeed;
    this.carSize = carSize;
    this.carY = carY;
    this.carX = carX;
  }
  void display() 
  {
    fill(0, 255, 0);
    rect(carX, carY, carSize, 50);
  }
  void drive() {
    carX -= carSpeed;
    if (carX < -carSize) {
      carX = 400;
    } else if (carX > 400) {
      carX = -carSize;
    }
  }
  int getX() {
    return carX;
  }
  int getY() {
    return carY;
  }
  int getSize() {
    return carSize;
  }
}
boolean intersects(Car car) {
  if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
    return true;
  else 
    return false;
}

