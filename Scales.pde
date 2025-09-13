void setup() {
  size(500, 500);
  background(255,200,200);
  //noLoop();
}
void draw() {
  for (int y = 0; y <= 510; y+=30){
    for (int x = 0; x <= 510; x+= 30)
      scale(x,y);
    for (int x = 0; x <= 510; x+=30)
      scaleTwo(x,y);
  }
}
void scale(int x, int y) {//individual scales
  fill(0,0,180);
  beginShape();
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  curveVertex(x,y+15);
  curveVertex(x-15,y);
  curveVertex(x,y-15);
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  endShape();
    fill(sqrt((x-mouseX)^2+(y-mouseY)^2)*15,150,180);
  if (mouseX >= 250 && mouseY >= 250){
    ellipse(x+mouseX/65,y+mouseY/65,11,11);
  }
  else if (mouseX < 250 && mouseY >= 250){
    ellipse(x-mouseX/65,y+mouseY/65,11,11);
  }
  else if (mouseX < 250 && mouseY < 250){
    ellipse(x-mouseX/65,y-mouseY/65,11,11);
  }
  else{
    ellipse(x+mouseX/65,y-mouseY/65,11,11);
  }
}
void scaleTwo(int x,int y){//individual scales pt2
  fill(170,170,sqrt((x-mouseX)^2+(y-mouseY)^2)*15);
  ellipse(x+14,y+15,8,12);
}
