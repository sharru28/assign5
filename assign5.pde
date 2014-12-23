Brick [] bricks;
Ball myBall;
Bar myBar;

//Game Status
final int GAME_START   = 0;
final int GAME_RUN     = 1;
final int GAME_PLAYING = 2;
final int GAME_PAUSE   = 3;
final int GAME_WIN     = 4;
final int GAME_LOSE    = 5;

String pStart = "PONG";
String sStart = "Press Enter to Start";
String pPause = "Pause";
String sPause = "Press Enter to Resume";
String pWin   = "WINNER";
String sWin   = "SCORE";
String pLose  = "BOOM";
String sLose  = "DEAD!";

int status;              
int life ;
int myBX ;
int myBY;
int brickNums;

void printText(
int pSize, int px, int py, String pMark, String sMark) {  
  textSize(pSize);
  text(pMark, px, py);
  fill(105,105,105);
  textSize(20);
  text(sMark, px, py+40);
  fill(105,105,105);
  textAlign(CENTER);
}

void reset(){
  brickNum=0;
}

void setup(){
  status = GAME_START;
  size(640,480);
  background(255);
  
  life =3;
  
  bricks = new Brick[50];
  myBar = new Bar(80);
  
  makebrick(50);
  
  reset();
}



void draw(){
  background(0);
  switch(status){
    
    case GAME_START:;
     printText(60, width/2, height/2, pStart, sStart);
     
     break;
    
    case GAME_RUN:
     for(int i=0;i<bricks.length;i++){
     fill(int (i*49%255),int(i*49%255),255);
     bricks[i].display();
      }
     myBar.move();
     myBar.display();
     myBX = mouseX;
     myBY = height - 30;
     myBall = new Ball (myBallX,myBallY);
     myBall.display();
     drawLife();
      
     break;
    
    case GAME_PLAYING:
     myBar.move();
     myBar.display();
     for(int i=0;i<bricks.length;i++){
     fill(int (i*49%255),int(i*49%255),255);
     bricks[i].display();
      }
     myBX = mouseX;
     myBY = height - 30;
     myBall.display();
     myBall.move();
     drawLife();
     checkBallMissed();
     checkBrickHit();
     checkWin();
   
    break;
     
    case GAME_PAUSE:     
    /*---------Print Text-------------*/
    printText(40, width/2, height/2, pPause, sPause);
    /*--------------------------------*/
    break;
  case GAME_WIN:
    /*---------Print Text-------------*/
    printText(40, width/2, height/2+80, pWin,"cool");
    /*--------------------------------*/
    //winAnimate();
    break;
  case GAME_LOSE:
 
    /*---------Print Text-------------*/
    //loseAnimate();
   fill(95, 194, 226);
    printText(40, width/2, height/2, pLose, sLose);
  
    /*--------------------------------*/
    break;
  
     }
}
