class JoyPad {
  void checkInput() {
    if (keyPressed) {
      if (key == 'a' || key == 'A') {
        spawner.move(-5);
      } else if (key == 'd' || key == 'D') {
        spawner.move(5);
      }
    }
  }
}

JoyPad joyPad = new JoyPad();
