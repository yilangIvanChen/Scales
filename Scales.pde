void setup() {
  size(500, 500);  //feel free to change the size
  background(120,180,180);
  noLoop(); //stops the draw() function from repeating
}
//individual bezier unit
int xInt = 120;
int yInt = 90;
int x1 = 25;
int y1 = 25;
int crX1 = x1+xInt;
int crY1 = y1+yInt;
int x2 = 100;
int y2 = 125;
int crX2 = x2-xInt;
int crY2 = y2-yInt;
//bezier color
int r = 220;
int g = 150;
int b = 0;
int i;
void draw(){
  scale(x1,y1);
}

void scale(int x, int y) {
  noStroke();
  for(i = 1; i <= 3; i++){
    fill(r,g,b);
    bezier(x1,y1,crX1,crY1,crX2,crY2,x2,y2);
    //bezier coord changes
    x1 += 10;
    y1 -= 5;
    x2 -= 10;
    y2 += 5;
    //color changes
    b += 15;
    g += 25;
    r -= 25;
  }
  for(i = 1; i <= 3; i++){
    fill(r,g,b);
    x1 -= 30;
    y1 += 15;
    x2 += 30;
    y2 -= 15;
    bezier(x1,y1,crX1,crY1,crX2,crY2,x2,y2);
    //bezier coord changes part 2
    x1 += 10;
    y1 -= 5;
    x2 -= 10;
    y2 += 5;
    //color changes
    b -= 15;
    g -= 25;
    r += 25;
  }
}
