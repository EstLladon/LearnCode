Star[] stars=new Star[800];
float speed=0;
void setup(){
  size(800,800);
  for (int i=0;i<stars.length;i++){
    stars[i]=new Star();
  }
}

void draw(){
  background(0);
  translate(width/2,height/2);
  speed=map(mouseX,0,width,0,20);
  for (int i=0;i<stars.length;i++){
  stars[i].update();
  stars[i].show();
  }
}
