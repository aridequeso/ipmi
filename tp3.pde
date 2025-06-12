//Abril Morell comision 3   https://youtu.be/7M8ax9P6fjE



PImage referencia;

int cols = 8;
int rows = 8;
int blockSize = 50;
float offset = 0;
boolean desplazamientoDerecha = true;
color color1 = color(0);
color color2 = color(255);

void setup() {
  size(800, 400);                   
  referencia = loadImage("referencia.jpg");  
  noStroke();
}

void draw() {
  background(255);
  
  
  image(referencia, 0, 0, 400, 400);

 
  rows = height / blockSize;

 
  offset = map(mouseX, 0, width, -blockSize / 2, blockSize / 2);

  
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {

      
      if ((x + y) % 2 == 0) {
        fill(color1);
      } else {
        fill(color2);
      }

      float dx = (y % 2 == 0) ? offset : -offset;
      float posX = x * blockSize + dx + 400 + (400 - cols * blockSize) / 2;
      float posY = y * blockSize;

     
      push();
      rect(posX, posY, blockSize, blockSize);
      pop();
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    reset();
  } else if (key == 'c') {
    color1 = color(random(255), random(255), random(255));
    color2 = color(random(255), random(255), random(255));
  }
}

void mousePressed() {
  desplazamientoDerecha = !desplazamientoDerecha;
  offset += desplazamientoDerecha ? 5 : -5;
}

void reset() {
  offset = 0;
  color1 = color(0);
  color2 = color(255);
}
