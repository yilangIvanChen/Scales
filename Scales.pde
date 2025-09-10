void setup() {
  size(500, 500);
  background(200,200,255);
  noLoop(); //stops the draw() function from repeating
}
int ovalRed = 255;
void draw() {
  for (int y = 0; y <= 510; y+=30){
    for (int x = 0; x <= 510; x+= 30)
      scale(x,y);
    for (int x = 0; x <= 510; x+=30)
      scaleTwo(x,y,ovalRed);
  }
}
void scale(int x, int y) {//individual scales
  fill(0,0,255);
  beginShape();
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  curveVertex(x,y+15);
  curveVertex(x-15,y);
  curveVertex(x,y-15);
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  endShape();
  fill(0,150,150);
  ellipse(x,y,15,15);
}
void scaleTwo(int x,int y, int ovalRed){//individual scales pt2
  fill(ovalRed,0,0);
  ellipse(x+15,y+15,10,14);
}
