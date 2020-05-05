class Drop{
  float x=random(width);
  float y=random(-500,0);
  float z=random(0,20);
  float yspeed=map(z,0,20,4,10);
  float ln=map(z,0,20,10,20);
  void fall(){
    y=y+yspeed;
    yspeed  = yspeed+0.05;
    if (y>height){
     y=random(-100,0);
     yspeed=map(z,0,20,4,10);
    }
  }
  void show(){
    stroke(138,43,226);
    strokeWeight(map(z,0,20,1,4));
    line(x,y,x,y+ln);
  }
}
