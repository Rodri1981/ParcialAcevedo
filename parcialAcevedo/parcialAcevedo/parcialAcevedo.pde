PImage backgroundImg;
PImage coinImg;
ArrayList<Coin> coins = new ArrayList<Coin>();
Spawner spawner;
int coinCounter = 0;

void setup() {
  size(690, 835  );
  backgroundImg = loadImage("iori.png");
  coinImg = loadImage("coin.png");
  spawner = new Spawner(width);
  joyPad = new JoyPad();
}

void draw() {
  background(backgroundImg);
  joyPad.checkInput();
  spawner.spawnCoins();
  for (int i = coins.size() - 1; i >= 0; i--) {
    Coin coin = coins.get(i);
    coin.update();
    coin.display();
    if (coin.isOffScreen()) {
      coins.remove(i);
      coinCounter++;
    }
  }
  displayScore();
}

void displayScore() {
  fill(0);// color de fondo para cubrir el area del texto
  rect(0, 0, 150, 40); //dibujar el rectangulo para cubrir el texto
  
  fill(110);
  textSize(30);
  text("Coins: " + coinCounter, 25, 30);
}
