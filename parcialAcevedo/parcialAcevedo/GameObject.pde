abstract class GameObject {
  float x, y;
  PImage sprite;

  GameObject(float x, float y, PImage img) {
    this.x = x;
    this.y = y;
    this.sprite = img;
  }

  void display() {
    image(sprite, x, y);
  }

  abstract void update();
}
