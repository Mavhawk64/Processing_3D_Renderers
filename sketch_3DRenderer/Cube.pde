public class Cube {
  public Edge[] e;
  public Vertex[] v;
  private int w;
  public Cube(int w) {
    this.e = new Edge[12];
    this.v = new Vertex[8];
    this.w = w;
  }
  
  public void rotateVA(PVector u, float angle) {
    u.normalize();
    PVector[] R = { new PVector( cos(angle) + u.x * u.x * ( 1 - cos(angle) ), u.x * u.y * ( 1 - cos(angle) ) - u.z * sin(angle), u.x * u.z * ( 1 - cos(angle) ) + u.y * sin(angle) ),
                    new PVector( u.y * u.x * ( 1 - cos(angle) ) + u.z * sin(angle), cos(angle) + u.y * u.y * ( 1 - cos(angle) ), u.y * u.z * ( 1 - cos(angle) ) - u.x * sin(angle) ),
                    new PVector( u.z * u.x * ( 1 - cos(angle) ) - u.y * sin(angle), u.z * u.y * ( 1 - cos(angle) ) + u.x * sin(angle), cos(angle) + u.z * u.z * ( 1 - cos(angle) ) )
                  };
    for(int i = 0; i < 8; i++) {
      PVector r = new PVector(0,0,0);    
      r.x = R[0].dot(this.v[i].v);
      r.y = R[1].dot(this.v[i].v);
      r.z = R[2].dot(this.v[i].v);
      this.v[i].v = r;
      this.v[i].setRowAndCol(this.w,this.w);
    }
  }
  
}
