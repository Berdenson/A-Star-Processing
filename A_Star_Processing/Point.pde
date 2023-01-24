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
      square(x,y,width/10);
      System.out.println(x + ", " + y + "!");
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
