int totalFrames =120;
int counter =0;

void setup(){
 size(400,400); 
}

void draw(){
  float percent = float(counter)/totalFrames;
 render(percent);
 saveFrame("output/gif-"+nf(counter,3)+".png");
 counter++;
 if (counter==totalFrames){
  exit(); 
 }
}

void render (float percent){
 background(0);
 fill(255);
 ellipse(percent*width,height/2,20,20);
 float angle= percent*TWO_PI;
 translate(width/2,height/2);
 rectMode(CENTER);
 stroke(255);
 noFill();
 strokeWeight(2);
 rotate(angle);
 square(0,0,100);
}
