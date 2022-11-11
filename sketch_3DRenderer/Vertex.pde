public class Vertex {
  public int row, col;
  public PVector v;
  public Vertex(int row, int col) {
    this.row = row;
    this.col = col;
  }
  
  public Vertex(float x, float y, float z) {
    this.v = new PVector(x,y,z);
  }
  
  public void setRowAndCol(int w, int h) {
    // use ray-tracing to convert the xyz to row/col
    float x2d = this.v.x;
    float y2d = this.v.y;
    this.col = (int) (x2d + 1) * w;
    this.row = (int) (y2d + 1) * h;
  }
  
}
