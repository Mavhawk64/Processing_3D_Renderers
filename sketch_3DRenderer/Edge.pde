public class Edge {
  public Vertex v1;
  public Vertex v2;
  public Edge() {
    this.v1 = null;
    this.v2 = null;
  }
  
  public Edge(Vertex a, Vertex b) {
    this.v1 = a;
    this.v2 = b;
  }
  
  public void initiateVertices(Vertex a, Vertex b) {
    this.v1 = a;
    this.v2 = b;
  }
  
}
