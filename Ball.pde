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
    y-=yspeed;
    
    if(x<0 || x>width){
      xspeed *= -1;
    }
    if(y<0){
     yspeed *= -1; 
    }
    if( x<=mouseX+40 && x>=mouseX-40 && (y-size/2)>=height-30){
      yspeed *= -1;
    }
    if(y>height){
      y = 800;
    }
}

void display(){
 fill(105,105,105);
ellipse(x,y,size,size);
}

void stick(){
  
    x = mouseX;
    y = height - 30;
    
    if(x+45>=width){
     x=x-45; 
    }
    if(x-45<=0){
      x=x+45;
    }
}
//constructor

Ball(float myBallx, float myBally){
 x = myBallx;
 y = myBally;
 xspeed =6;
 yspeed =5;
 size =20;
}
}
