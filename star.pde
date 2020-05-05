class Star{
 float x;
 float y;
 float z;
 float pz;
 Star(){
   x=random(-width/2,width/2);
   y=random(-height/2,height/2);
   z= random(0,width);
   pz=z;
 }
 
 void update(){

   z=z-speed;
   if (z<1){
    z=width; 
    pz=width;
   x=random(-width/2,width/2);
   y=random(-height/2,height/2);
   }
 }
 void show(){
   fill(255);
   noStroke();
   float sx = map(x/z,0,1,0,width);
   float sy = map(y/z,0,1,0,height);
   float r=map(z,0,width,16,0);
   //ellipse(sx,sy,r,r);
   
   stroke(255);
   float psx = map(x/pz,0,1,0,width);
   float psy = map(y/pz,0,1,0,height);
   
   strokeWeight(r);
   line(psx,psy,sx,sy);
      pz=z;
 }
}
