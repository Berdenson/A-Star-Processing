int x = 10;
int y = 10;

void setup() {
  size(1000,1000);
  

}

void draw() {
    background(0, 255, 255);
  
  for (int i=0; i<width; i+=width/x) {
 
    line (0,i, width, i);
    
    for (int j=0; j<height; j+=width/y) {
      
      line (j,0, j, height);
      
    }
  
  }
}

void mouseClicked() {
  System.out.println(mouseX + ", " + mouseY);
  Point point = new Point(mouseX/100,mouseY/100);
  point.output();
  point.setObstacle();
  
}
