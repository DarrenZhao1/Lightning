int startX = 200;
int startY = 500;
int endX = 500;
int endY = 500;

void setup(){
  size(1000, 1000);
  strokeWeight(4);
  background(20);
  ghost();
}

void ghost(){
  noStroke();
  fill(#FF66FF);
  ellipse(750, 400, 100,100);
  rect(700, 410, 100, 70);
  ellipse(720, 485, 40, 40);
  ellipse(750, 485, 40,40);
  ellipse(780, 485, 40,40);
  fill(255);
  ellipse(730, 410, 30,30);
  ellipse(770, 410, 30,30);
  fill(0);
  ellipse(720, 410, 10,10);
  ellipse(760, 410, 10,10);
  stroke(20, 50, 70);
  fill(255);
  noStroke();
  beginShape();
vertex(740, 470);
bezierVertex(740, 470, 750, 420, 780, 470);
endShape();
}

void draw(){
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while (endX < 1000){
    endX = startX + ((int)(Math.random()*9));
    endY = startY + ((int)(Math.random()*18)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
 //pacman
  noStroke();
  fill (#FFFF00);
  ellipse(120, 500, 150, 150);
  fill(20);
  triangle(195, 590, 130, 500, 195, 410);
  fill(0);
  ellipse(130, 450, 10, 10);
  stroke(0,0,255);
  line(0, 200, 1000, 200);
  line(0, 750, 1000, 750);

}



void mousePressed(){
 startX = 200;
 startY = 500;
 endX = 500;
 endY = 500;
}
