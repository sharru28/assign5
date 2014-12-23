class Bar{
  // properties
  float x;
  float y;
  float l;
  
  // methods
  void display(){
    
    rectMode(CENTER);
    fill(150,205,205);
    rect(x,y,l+10,20);
  }
  
  void move(){
    x = mouseX;
    if(x+45>=width){
     x=x-45; 
    }
    if(x-45<=0){
      x=x+45;
    }
   }
   
   
  
  // constructor
  Bar(float l){
    
    y = height-10;
    this.l = l;

  }
} 
