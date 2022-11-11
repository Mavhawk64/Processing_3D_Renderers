int[][] grid;
int s = 64;
int c;
PVector vector;
Cube cube;

void setup() {
  size(768,768);
  c = width / s;
  grid = new int[s][s];
  vector = new PVector(0,1,0);
  cube = new Cube(c);
  cube.v[0] = new Vertex(0,0,0); // A 0
  cube.v[1] = new Vertex(0,0,1); // B 1
  cube.v[2] = new Vertex(0,1,0); // C 2
  cube.v[3] = new Vertex(0,1,1); // D 3
  cube.v[4] = new Vertex(1,0,0); // E 4
  cube.v[5] = new Vertex(1,0,1); // F 5
  cube.v[6] = new Vertex(1,1,0); // G 6
  cube.v[7] = new Vertex(1,1,1); // H 7
  
  cube.e[0] = new Edge(cube.v[0],cube.v[1]);
  cube.e[1] = new Edge(cube.v[0],cube.v[2]);
  cube.e[2] = new Edge(cube.v[0],cube.v[4]);
  
  cube.e[3] = new Edge(cube.v[3],cube.v[1]);
  cube.e[4] = new Edge(cube.v[3],cube.v[2]);
  cube.e[5] = new Edge(cube.v[3],cube.v[7]);
  
  cube.e[6] = new Edge(cube.v[5],cube.v[1]);
  cube.e[7] = new Edge(cube.v[5],cube.v[4]);
  cube.e[8] = new Edge(cube.v[5],cube.v[7]);
  
  cube.e[9] = new Edge(cube.v[6],cube.v[2]);
  cube.e[10] = new Edge(cube.v[6],cube.v[4]);
  cube.e[11] = new Edge(cube.v[6],cube.v[7]);
}

void draw() {
  background(128);
  for(int i = 0; i < s; i++) {
    for(int j = 0; j < s; j++) {
      fill(0);
      if(grid[i][j] == 0) {
        fill(255);
      }
      square(i*c,j*c,c);
    }
  }
  grid = new int[s][s];
  cube.rotateVA(new PVector(1,0,0), 0.1);
  for(int i = 0; i < cube.v.length; i++) {
    grid[cube.v[i].row][cube.v[i].col] = 1;
  }
}
