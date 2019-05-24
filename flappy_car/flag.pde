class flag {
  float xPos, yPos, ySpeed;
  PShape s;  // The PShape object
  float x=25;
  flag() {
    xPos = 300;
    yPos = 400;

    // Creating a custom PShape as a square, by
    // specifying a series of vertices.
    s = createShape();
    s.beginShape();
    s.fill(34, 139, 34);
    s.noStroke();
    s.vertex(0, 0);
    s.vertex(0, 50);
    s.vertex(50, 50);
    s.vertex(50, 0);
    s.endShape(CLOSE);
  }}
