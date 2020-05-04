ArrayList<PVector> heart = new ArrayList<PVector>();
float a=0;

void setup() {
  size(600, 600);
}


void draw() {
  background(0);
  translate(width/2, height/2);
  fill(150, 0, 100);
  stroke(255);
  strokeWeight(2);
  beginShape();
  for (PVector v : heart) {

    vertex(v.x, v.y);
  }
  endShape();
  float r = 10;
  float x = r*(16 * pow(sin(a), 3));
  float y = r*(-1*(13*cos(a)-5*cos(2*a)-2*cos(3*a)-cos(4*a)));
  heart.add(new PVector(x, y));
  a+=0.01;
}
