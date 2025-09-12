void setup() {
  size(500, 500);
  background((int)(Math.random()*256)+150,(int)(Math.random()*256)+190,(int)(Math.random()*256)+190);
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
  fill(0,0,(int)(Math.random()*200)+100);
  beginShape();
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  curveVertex(x,y+15);
  curveVertex(x-15,y);
  curveVertex(x,y-15);
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  endShape();
  fill(0,(int)(Math.random()*200)+180,(int)(Math.random()*200)+180);
  ellipse(x,y,15,15);
}
void scaleTwo(int x,int y){//individual scales pt2
  fill((int)(Math.random()*256)+100,150,150);
  ellipse(x+14,y+15,10,14);
}
