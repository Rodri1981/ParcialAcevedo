class Coin extends GameObject {
  float speedY;

  Coin(float x, PImage img) {
    super(x, 0, img);
    this.speedY = random(2, 5);
  }

  void update() {
    y += speedY;
  }

  boolean isOffScreen() {
    return y > height;
  }
}
