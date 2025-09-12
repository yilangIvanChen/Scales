void setup() {
  size(500, 500);
  background(255,(int)(Math.random()*256)+190,(int)(Math.random()*256)+190);
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
  fill(0,0,(int)(Math.random()*200)+165);
  beginShape();
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  curveVertex(x,y+15);
  curveVertex(x-15,y);
  curveVertex(x,y-15);
  curveVertex(x+15,y);
  curveVertex(x+15,y);
  endShape();
  fill(0,sqrt((x-mouseX)^2+(y-mouseY)^2)*2,sqrt((x-mouseX)^2+(y-mouseY)^2)*2);
  ellipse(x+mouseX/80,y+mouseY/80,11,11);
}
void scaleTwo(int x,int y){//individual scales pt2
  fill(255,255,sqrt((x-mouseX)^2+(y-mouseY)^2)*13.5);
  ellipse(x+14,y+15,8,12);
}
//work in progess
