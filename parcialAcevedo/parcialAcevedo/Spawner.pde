class Spawner {
  float x;
  int width;

  Spawner(int width) {
    this.width = width;
    this.x = width / 2;
  }

  void spawnCoins() {
    if (frameCount % 60 == 0) {
      coins.add(new Coin(x, coinImg));
    }
  }

  void move(float dx) {
    x += dx;
    x = constrain(x, 0, width);
  }
}
