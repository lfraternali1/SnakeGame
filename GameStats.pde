class gameStats {
  int score, level, highScore, speed;

  gameStats() {
    reset();
  }

  void reset() {
    score = 0;
    level = 1;
    speed = 10;
  }

  void increaseScore() {
    score += level;
    if (score % 5 == 0 && level < 10) {
      level++;
      speed += 2;
      frameRate(speed);
    }
  }

  void updateHighScore() {
    if (score > highScore) highScore = score;
  }

  void drawHUD() {
    fill(255);
    textSize(16);
    textAlign(LEFT, TOP);
    text("Score: " + score, 10, 10);
    textAlign(CENTER, TOP);
    text("Level: " + level, width/2, 10);
    textAlign(RIGHT, TOP);
    text("HighScore: " + highScore, width - 10, 10);
  }
}
