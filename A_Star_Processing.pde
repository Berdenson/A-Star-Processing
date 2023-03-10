int x = 10;
int y = 10;
int squaresize;
Point[][] points = new Point[10][10];

void setup() {
  size(1000, 1000);
  

  
  squaresize = width/x;
  println("Square size is " + squaresize);
  for (int x=0; x<points.length; x+=1) {
    for (int y=0; y<points.length; y+=1) {
      points[x][y] = new Point(squaresize*x, squaresize*y);
    }
  }
}

void draw() {
  background(0, 255, 255);
  
  //Point start = new Point(4,4);
  //start.setStart(true);

  //Point end = new Point(7,9);
  //end.setEnd(true);
  
  points[4][4].setStart(true);
  points[7][9].setEnd(true);

  for (int i=0; i<width; i+=width/x) {

    line (0, i, width, i);

    for (int j=0; j<height; j+=width/y) {

      line (j, 0, j, height);
    }
  }

  for (Point[] y : points) {
    for (Point x : y) {
      x.draw();
    }
  }
}


void mouseClicked() {
  int posx = floor(mouseX/squaresize);
  int posy = floor(mouseY/squaresize);
  Point point = points[posx][posy];
  point.setObstacle();
}
