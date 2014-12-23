class Brick{
// properties
  float ox;
  float oy;
  float l;
  float w;
  int colNum;
  boolean go = false;



// methods
void display(){
  rectMode(CENTER);
 
  rect(ox,oy,l,w);
  
}
// constructor
Brick(float x,float y){
  ox = x;
  oy = y;
  this.l= 40;
  this.w= 20;
}
}
