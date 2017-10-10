int startX=0;
int startY=250;
int endX=0;
int endY=350;
//snake color
int r=0;
int g=0;
int b=0;
//background color
int r2=0;
int g2=0;
int b2=0;
//triangle height
int triY=0;
void setup() {
  size(500, 500);
  //first text
  textSize(10);
  strokeWeight(15);
  text("The background will change if the snake eats the food", 25, 450);
}

void draw() {
  //evan helped me 
  //random snake color
  r=(int) (Math.random()*255);
  g=(int) (Math.random()*255);
  b=(int) (Math.random()*255);
  while (endX<350) {
    //basic snake code
    strokeWeight(100);
    endX=startX+(int)(Math.random()*10);
    endY=startY+(int)(Math.random()*50-25);
    stroke(r, g, b);
    line(startX, startY, endX, endY);
    strokeWeight(0);
    //Y restraining variables
    endY=constrain(endY, 0, 500);
    startY=constrain(startY, 0, 500);

    if (endX>340) {
      ellipse(endX-15, endY-30, 25, 25);
      ellipse(endX-15, endY+30, 25, 25);
      endX=350;
    }
    startX=endX;
    startY=endY;
  }
  //if (test==1){
  //  while (endX==350){
  //    strokeWeight(100);
  //    endX=startX+(int)(Math.random()*10);
  //    endY=startY+(int)(Math.random()*180-9);
  //    stroke(r,g,b);
  //    line(startX,startY,endX,endY);
  //    strokeWeight(0);

  //    ellipse(endX-15,endY-30,25,25);
  //    ellipse(endX-15,endY+30,25,25);

  //}
  //}
}

void mousePressed() {
  stroke(0);
  triY=(int)(Math.random()*700-350);
  startX=0;
  startY=250;
  endX=0;
  endY=350;
  background(100);
  //snake food
  triangle(350, triY, 380, triY-60, 410, triY);
  if (triY>endY-100 && triY<endY+100) {
    r2=(int) (Math.random()*255);
    g2=(int) (Math.random()*255);
    b2=(int) (Math.random()*255);
    triY=250;
    background(r2, g2, b2);
  }
} 
