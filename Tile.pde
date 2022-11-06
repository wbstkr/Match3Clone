public class Tile {
    public color colour;
    public ArrayList<Tile> grid;
    public int index;
    public int rowSize;
    
    public Tile(color colour, ArrayList<Tile> grid, int index, int rowSize) {
        this.colour = colour;
        this.grid = grid;
        this.index = index;
        this.rowSize = rowSize;
    }
    
    public void render() {
        fill(this.colour);
        noStroke();
        
        int x1 = (int) map(index % this.rowSize, 0, this.rowSize, 0, width);
        int y1 = (int) map(index / this.rowSize, 0, this.grid.size() / this.rowSize, 0, height);
        int x2 = (int) map(index % this.rowSize + 1, 0, this.rowSize, 0, width);
        int y2 = (int) map(index / this.rowSize + 1, 0, this.grid.size() / this.rowSize, 0, height);
        
        ellipseMode(CORNERS);
        
        ellipse(x1, y1, x2, y2);
    }
}