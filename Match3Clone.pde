public ArrayList<Tile> grid;
public int rowSize;
public final color[] colours = {
    0xFFFF0000,
    0xFF00FF00,
    0xFF0000FF
};

public void setup() {
    size(600, 600);
    
    grid = new ArrayList();
    rowSize = 10;
    
    for (int i = 0; i < 100; i++) {
        grid.add(new Tile(colours[(int) random(colours.length)], grid, i, rowSize));
    }
}

public void draw() {
    background(0);
    
    for (Tile tile : grid) {
        tile.render();
    }
}