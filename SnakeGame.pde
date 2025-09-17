Snake     s;
Food      f;
GameStats stats;
int dim = 20;

void setup() {
  size(400, 400);
  s     = new Snake(dim);
  f     = new Food (dim, s);
  stats = new GameStats();
  frameRate(stats.speed);
}

void draw() {
  background(0);
  s.update();
  s.draw();
  f.draw();
  stats.drawHUD();
  
  // Mangio il cibo
  if (s.x[0] == f.fx && s.y[0] == f.fy) {
    s.grow();
    f.setPosition(s);
    stats.increaseScore();
  }
  
  // Collisione con se stesso
  if (s.checkCollision()) {
    stats.updateHighScore();
    fill(255, 0, 0);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("GAME OVER!", width/2, height/2);
    textSize(15);
    text("R FOR RESET", width/2, height/2+32);
    noLoop();
  }
}

void keyPressed() {
  switch (keyCode) {
    case UP:    if (s.currdir != 3) s.nextdir = 4; break;
    case DOWN:  if (s.currdir != 4) s.nextdir = 3; break;
    case LEFT:  if (s.currdir != 1) s.nextdir = 2; break;
    case RIGHT: if (s.currdir != 2) s.nextdir = 1; break;
  }
  if (key == 'r' || key == 'R') {
    resetGame();
  }
}

void resetGame() {
  s.init();
  f.setPosition(s);
  stats.reset();
  frameRate(stats.speed);
  loop();
}
