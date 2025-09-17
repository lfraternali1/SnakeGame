class Snake{
  int dim;
  int[] x, y, dir;
  int currdir, nextdir;
  
  Snake(int dim){
    this.dim = dim;
    init();
  }
  
  void init(){
    x   = new int[]{width/2, width/2 - dim, width/2 - 2*dim};
    y   = new int[]{height/2, height/2, height/2};
    dir = new int[]{1, 1, 1};
    currdir = 1;
    nextdir = 1;
  }
  
  void update(){
    currdir = nextdir;
    
    // Aggiorna direzioni
    int dir_prec = dir[0];
    dir[0] = currdir;
    for (int i = 1; i < x.length; i++) {
      int temp = dir[i];
      dir[i] = dir_prec;
      dir_prec = temp;
    }
    
    // Movimento
    for (int i = 0; i < x.length; i++) {
      switch(dir[i]){
        case 1: x[i] += dim; break;
        case 2: x[i] -= dim; break;
        case 3: y[i] += dim; break;
        case 4: y[i] -= dim; break;
      }
      // Teletrasporto dai bordi
      if (x[i] >= width) x[i] = 0;
      if (y[i] >= height) y[i] = 0 ;
      if (x[i] < 0) x[i] = width - dim;
      if (y[i] < 0) y[i] = height - dim;
    }
  }
  
  void draw(){
    for(int i = 0; i < x.length; i++){
      if (i == 0){ 
        fill (0, 150, 0);
      }else{
        fill (0, 255, 0);
      }
      rect(x[i], y[i], dim, dim);
    }
  }
  
  // Aggiunge un pezzo al serpente
  void grow(){
    int lastX   = x[x.length - 1];
    int lastY   = y[y.length - 1];
    int lastDir = dir[dir.length - 1];
    switch(lastDir){
      case 1: lastX -= dim; break;
      case 2: lastX += dim; break;
      case 3: lastY -= dim; break;
      case 4: lastY += dim; break;
    }
    x   = append(x, lastX);
    y   = append(y, lastY);
    dir = append(dir, lastDir);
  }
  
  boolean checkCollision(){
    for (int i = 1; i < x.length; i++) {
      if (x[0] == x[i] && y[0] == y[i]) {
        return true;
      }
    }
    return false;
  }
  
}
