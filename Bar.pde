class Bar{
  // properties
  float x;
  float y;
  float l;
  
  // methods
  void display(){
    
    rectMode(CENTER);
    fill(150,205,205);
    rect(x,y,l,20);
  }
  
  void move(){
    x = mouseX;
   }
   
   
  
  // constructor
  Bar(float l){
    
    y = height-10;
    this.l = l;

  }
} 
