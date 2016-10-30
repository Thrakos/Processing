Button fireButton = new Button(30, 525, 630, "Launch");
PImage farm;
PImage pumpkin;
PImage scarecrow;
int pumpkinX = 100;
int pumpkinY = 500;

static final int GRAVITY = 32;
double vx = 16;
double vy = -21;

static final int READY = 0;
static final int FIRE = 1;
int mode = READY;

void setup() {
  farm = loadImage("farm.jpg");
  pumpkin = loadImage("pumpkin.png");
  scarecrow = loadImage("scarecrow.png");
  size(1180, 684);
  background(farm);
  fireButton.setColor(204, 119, 0);
}

void draw() {
  background(farm);
  image(pumpkin, pumpkinX, pumpkinY);
  image(scarecrow, 900, 300);
  if (mode == FIRE) {
    pumpkinX += vx;
    pumpkinY += vy;
    vy += GRAVITY/40.0;
    if (pumpkinY > 500) {
      pumpkinX = 100;
      pumpkinY = 500;
      vx = 16;
      vy = -21;
      mode = READY;
    }
  } else if (mode == READY) {
    fireButton.setVisible(true);
  }
}
void buttonActionPerformed(Button button) {
  if (button == fireButton) {
    mode = FIRE;
  }
}

