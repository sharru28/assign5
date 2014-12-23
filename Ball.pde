class Ball{
// properties

  float x;
  float y;
  float xspeed;
  float yspeed;
  float size;

//methods

  void move(){
    x+=xspeed;
    y+=yspeed;
    
    if(x<0 || x>width){
      xspeed *= -1;
    }
    if(y<0){
     yspeed *= -1; 
    }
    if( x<=mouseX+40 && x>=mouseX-40 && (y-size/2)>=height-30){
      ySpeed *= -1;
    }
    if(y>height){
      y = 800;
    }
}

void display(){
 fill(105,105,105);
ellipse(x,y,size,size);

//constructor

Ball(int myBx, int myBy){
 x = myBx;
 y = myBy;
 xspeed =6;
 yspeed =5;
 size =20;
}
}
