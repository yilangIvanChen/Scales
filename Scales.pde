void setup() {
  size(750, 750);
  background(80,50,50);
  //noLoop(); //stops the draw() function from repeating
}
void draw() 
{
  int x = 0;
  int y = 0;
  for (y = 0; y <= 800; y+=50){
    for (x = 0; x <= 800; x+= 105){
      eye(x+10,y);    
  funcBlink(x,y);
    }
  }
}
void funcBlink(int x, int y){
  int blink = int(random(1,41));
  if (blink <= 2)
    eyelid(x+10,y);
}
void eye(int x, int y){
  //sclera
  strokeWeight(2.5);
  fill(100,20,20);
  beginShape();
  vertex(x-50, y);
  quadraticVertex(x, y-40, x+50, y);
  quadraticVertex(x, y+40, x-50, y);
  endShape(CLOSE);
  //pupil
  int diam = 0;
  float r = 255;
  noFill();
  while(diam < 30){
  stroke(r,r,r);
  ellipse(x,y,diam,diam);
  diam++;
  r-=255/21.0;
  }
}

void eyelid(int x, int y){
   strokeWeight(2.5);
   fill(50,70,60);
   beginShape();
   vertex(x-50, y);
   quadraticVertex(x, y-40, x+50, y);
   quadraticVertex(x, y+40, x-50, y);
   endShape(CLOSE);
}






