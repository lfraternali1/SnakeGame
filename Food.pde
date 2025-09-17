class food {
  int fx, fy, dim;
  
  // Costruttore
  food(int dim, snake s){
    this.dim = dim;
    setPosition(s);
  }
  
  // Posiziona il cibo evitando il serpente
  void setPosition(snake s){
    boolean insideSnake = true;
    do {
      fx = ((int)random(width)/dim)*dim;
      fy = ((int)random(height)/dim)*dim;
      insideSnake = false;
      int i = 0;
      while(!insideSnake && i < s.x.length){
        if (s.x[i] == fx && s.y[i] == fy){
          insideSnake = true;
        }
        i++;
      }
    }while(insideSnake);
   }
   
  // Disegna il cibo
  void drawFood(int fx, int fy){
    fill(255,0,0);
    rect(fx, fy, dim, dim);
  }
}
