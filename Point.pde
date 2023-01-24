public class Point {
  
  int x;
  int y;
  boolean obstacle = false;
  boolean start = false;
  boolean end = false;
  
  public Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void setObstacle() {
    this.obstacle = !this.obstacle;
    if (this.obstacle) {
      square(x*100,y*100,width/10);
    }
  }
  
  public void setStart(boolean start) {
    this.start = start;
  }
  
  public void setEnd(boolean end) {
    this.end = end;
  }
  
  public void output() {
    System.out.println(x + ", " + y + "; is obstacle: " + obstacle);
  }

public void draw() {
      if (this.obstacle) {
        fill(125);
        square(x,y,width/10);
      }
      
      if (this.start) {
        fill(0,255,0);
        square(x,y,width/10);
      }
      
      if (this.end) {
        fill(255,0,0);
        square(x,y,width/10);
      }
      
}}
