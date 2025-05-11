//Abril Morell TP2 comision 3

PImage img1, img2, img3, img4, img5, img6;
PFont fuente;
int pantalla = -1; 
int tiempoCambio = 5000;
int ultimoCambio;
boolean finalizado = false;

float textoX = 0;
float scaleFactor = 1;
float fadeAlpha = 255;
boolean fadeOut = true;

void setup() {
  size(640, 480);
  
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  img4 = loadImage("img4.jpg");
  img5 = loadImage("img5.jpg");
  img6 = loadImage("img6.jpg"); 

  fuente = createFont("Arial", 20);
  textFont(fuente);
  textAlign(CENTER);

  ultimoCambio = millis();
}

void draw() {
  background(0);

  if (pantalla == -1) {
    
    fill(255);
    textSize(32);
    text("Bienvenido a la presentación", width / 2, height / 3);
    
    fill(100, 200, 250);
    rect(width/2 - 75, height/2 - 25, 150, 50, 10);
    
    fill(255);
    textSize(20);
    text("Iniciar", width / 2, height / 2 + 5);
    
    return; 
  }

  
  if (pantalla == 0) image(img1, 0, 0, width, height);
  else if (pantalla == 1) image(img2, 0, 0, width, height);
  else if (pantalla == 2) image(img3, 0, 0, width, height);
  else if (pantalla == 3) image(img4, 0, 0, width, height);
  else if (pantalla == 4) image(img5, 0, 0, width, height);
  else if (pantalla == 5) image(img6, 0, 0, width, height);

  textSize(20);
  fill(255);
  textAlign(CENTER);

  if (pantalla == 0) {
    textoX = (millis() / 10) % (width + 200) - 200;
    text("Esta obra pertenece a teamLab.\nEllos suelen hacer instalaciones interactivas\nque combinan arte y tecnología.\nSuelen instalar sus obras en Tokio y otros lugares de Japón.", textoX, height - 100);
  } else if (pantalla == 1) {
    scaleFactor = 1 + 0.3 * sin(millis() / 300.0);
    pushMatrix();
    translate(width / 2, height - 100);
    scale(scaleFactor);
    text("Otra obra de teamLab:\nuna cascada digital con visitantes en tiempo real,\nreaccionando a este.\nteamLab se caracteriza por mezclar\nnaturaleza física y arte interactivo.", 0, 0);
    popMatrix();
  } else if (pantalla == 2) {
    if (fadeOut) {
      fadeAlpha -= 2;
      if (fadeAlpha <= 50) fadeOut = false;
    } else {
      fadeAlpha += 2;
      if (fadeAlpha >= 255) fadeOut = true;
    }
    fill(255, fadeAlpha);
    text("Esta obra pertenece a Christopher Bauder,\nartista alemán que se caracteriza por\ninstalaciones de luz cinética.", width / 2, height - 100);
    fill(255);
  } else if (pantalla == 3) {
    float y = height - 100 + 10 * sin(millis() / 200.0);
    text("Esta obra, creada por Casey Reas y Ben Fry,\nutiliza Processing para demostrar que\nel software también puede ser arte.", width / 2, y);
  } else if (pantalla == 4) {
    float offsetX = random(-3, 3);
    float offsetY = random(-3, 3);
    text("Esta obra, creada por Jenny Holzer,\nutiliza textos LED para provocar\nreflexión política y social.", width / 2 + offsetX, height - 100 + offsetY);
  } else if (pantalla == 5) {
    fill(0, 150);
    rect(width/2 - 80, height/2 - 30, 160, 60, 10);
    fill(255);
    textSize(20);
    text("Reiniciar", width/2, height/2 + 7);
  }

  if (!finalizado && millis() - ultimoCambio > tiempoCambio) {
    pantalla++;
    ultimoCambio = millis();
    if (pantalla > 5) {
      pantalla = 5; 
      finalizado = true;
    }
  }
}

void mousePressed() {
  if (pantalla == -1) {
    
    if (mouseX > width/2 - 75 && mouseX < width/2 + 75 &&
        mouseY > height/2 - 25 && mouseY < height/2 + 25) {
      pantalla = 0;
      ultimoCambio = millis();
    }
  } else if (pantalla == 5 &&
             mouseX > width/2 - 80 && mouseX < width/2 + 80 &&
             mouseY > height/2 - 30 && mouseY < height/2 + 30) {
    pantalla = 0;
    finalizado = false;
    ultimoCambio = millis();
  }
}
          
