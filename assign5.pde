Brick [] bricks;
Ball myBall;
Bar myBar;

//Game Status
final int GAME_START   = 0;
final int GAME_RUN     = 1;
final int GAME_WIN     = 2;
final int GAME_LOSE    = 3;

boolean click = false;

String Start = "PONG";
String s_Start = "Press Enter to Start";
String f_Win   = "WINNER";
String s_Score   = "SCORE";
String f_Lose  = "BOOM";
String f_Dead  = "DEAD!";

int status;              
int life ;
int myBX ;
int myBY;
int brickNums;

void printText(
int tSize, int px, int py, String pMark, String sMark) {  
  textSize(tSize);
  text(pMark, px, py);
  fill(105,105,105);
  textSize(20);
  text(sMark, px, py+40);
  fill(105,105,105);
  textAlign(CENTER);
}

void reset(){
  brickNums=0;
}

void setup(){
  status = GAME_START;
  size(640,480);
  background(255);
  
  life =3;
  
  bricks = new Brick[50];
  myBar = new Bar(80);
  myBall = new Ball(mouseX,height-30);
  makebrick(50);
  
  reset();
}



void draw(){
  background(0);
  noStroke();
  switch(status){
    
    case GAME_START:
     printText(60, width/2, height/2, Start, s_Start);
     
     break;
    
    case GAME_RUN:
    
     for(int i=0; i<bricks.length; i++){
     fill(int (i*49%255),int(i*49%255),255);
     bricks[i].display();
      }
      if (click == true){
       myBall.move(); 
      }else{
        myBall.stick();
      }
     myBar.move();
     myBar.display();
     myBall.display();
     drawLife();
      
     break;
    
  case GAME_WIN:

    printText(40, width/2, height/2+80, f_Win,"yayaya");

    break;
    
  case GAME_LOSE:
 

   fill(95, 194, 226);
    printText(40, width/2, height/2, f_Lose, f_Dead);

    break;
  
     }
}

void makebrick(int nums){
   for(int i=0; i<nums; i++){
     
     int colNum = 10; 
     int bx = (width-400-90)/2+(50*int(i % colNum));
     int by = 30+(30*int(i /colNum));
     bricks[i] = new Brick(bx,by);
   }
  }
  
void drawLife() {
  fill(230, 74, 96);
  text("LIFE:", 36, 455);
  
  for(int i=0;i<life;i++){
    int xspace = 25*i;
    ellipse(78+xspace,459,15,15);
  }
}

void mousePressed(){
  if (status==GAME_RUN && mouseButton == RIGHT){
    click = true;
  }
}
  
void keyPressed() {
  statusCtrl();
}

void statusCtrl() {
  if (key == ENTER) {
    switch(status) {
    case GAME_START:
      status = GAME_RUN;
      break;
      /*-----------add things here--------*/
    
    case GAME_WIN:
      status = GAME_RUN;
      //reset();
      break;
    case GAME_LOSE:
      status = GAME_RUN;
      //reset();
      break;
    }
  }
}
