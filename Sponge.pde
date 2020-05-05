float a=0;
Box b;
ArrayList<Box> Sponge= new ArrayList<Box> ();
void setup(){
 size(400,400,P3D); 
 b=new Box(0,0,0,200);
 Sponge.add(b);
}

void mousePressed(){
  ArrayList<Box> next=new ArrayList<Box>();
  for(Box b:Sponge){
  ArrayList<Box> newboxes=b.generate();
  next.addAll(newboxes);
  }
  Sponge=next;
}

void draw(){
  background(51);
  stroke(255);
  noFill();
  lights();
  translate(width/2,height/2);
  rotateX(a);
  rotateY(0.5*a);
  rotateZ(a*0.2);
  for(Box b:Sponge){ 
  b.show();
  }
  a+=0.01;
}
