PImage miFoto;

void setup() {
  size(800, 400);
  miFoto = loadImage("mifoto.jpg"); 
  noLoop();
}

void draw() {
  background(235, 210, 255); 

  
  image(miFoto, 50, 80, 200, 240); 

  
  noStroke();

  
  fill(255, 80, 0);
  beginShape();
  vertex(500, 160);
  bezierVertex(460, 200, 460, 310, 510, 350);
  bezierVertex(530, 390, 560, 400, 570, 360);
  bezierVertex(590, 400, 610, 400, 610, 360);
  bezierVertex(620, 400, 650, 390, 670, 350);
  bezierVertex(720, 310, 720, 200, 680, 160);
  bezierVertex(660, 150, 620, 130, 590, 140);
  bezierVertex(560, 130, 520, 150, 500, 160);
  endShape(CLOSE);

  
  fill(255, 225, 205);
  ellipse(590, 240, 170, 210);

  
  fill(255, 80, 0);
ellipse(560,145,30,30);
ellipse(580,135,30,30);
ellipse(600,130,30,30);
ellipse(620,135,30,30);
ellipse(640,145,30,30);
ellipse(590,155,30,30);
ellipse(610,155,30,30);
ellipse(620,150,30,30);
ellipse(610,150,30,30);
ellipse(600,150,30,30);
ellipse(590,150,30,30);
ellipse(600,140,30,30);
ellipse(580,150,30,30);
ellipse(550,160,30,30);
ellipse(540,160,30,30);
ellipse(650,160,30,30);
ellipse(640,160,30,30);



  
fill(250);
  ellipse(550, 220, 30, 18);
  ellipse(630, 220, 30, 18);
  fill(80, 40, 20);
  ellipse(550, 220, 10, 10);
  ellipse(630, 220, 10, 10);

  
  fill(255, 215, 190);
  triangle(590, 230, 585, 255, 595, 255);

  
  fill(100);
  ellipse(592, 242, 4, 4);

  
  fill(220, 120, 120);
  beginShape();
  vertex(570, 280);
  bezierVertex(580, 290, 600, 290, 610, 280);
  bezierVertex(600, 285, 580, 285, 570, 280);
  endShape(CLOSE);

  
  fill(200, 100, 100);
  for (int i = 0; i < 6; i++) {
    ellipse(530 + i * 10, 240, 2.5, 2.5);
    ellipse(590 + i * 10, 240, 2.5, 2.5);
  }

  
  fill(255, 225, 205);
  rect(560, 320, 60, 60);

  
  fill(50, 50, 80);
  arc(590, 380, 200, 150, 0, PI);
}
