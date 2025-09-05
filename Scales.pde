void setup() {
  size(500, 500);  //feel free to change the size
  background(40,125,250);
  noLoop(); //stops the draw() function from repeating
}
//individual bezier unit
int xInt = 105;
int yInt = 50;
int x1 = 25;
int y1 = 25;
int crX1 = x1+xInt;
int crY1 = y1+yInt;
int x2 = 100;
int y2 = 125;
int crX2 = x2-xInt;
int crY2 = y2-yInt;
//bezier color
int r = 150;
int g = 255;
int b = 170;
int i;
void draw() {
  noStroke();
  fill(r,g,b);
  for(i = 1; i <= 9; i++){
    bezier(x1,y1,crX1,crY1,crX2,crY2,x2,y2);
    x1 += 10;
    y1 -= 5;
    x2 -= 10;
    y2 += 5;
  }
}
void scale(int x, int y) {
  //your code here
}
