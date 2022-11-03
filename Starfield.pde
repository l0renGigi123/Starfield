
class Particle {
 double myX,myY,mySpeed,myAngle;
 int myColor, myWidth,myHeight; 
 
  Particle(){//default no argument constructor
    myX= myX+mySpeed*Math.cos(myAngle);
   myY = myY+mySpeed*Math.sin(myAngle);
   myWidth=1;
   myHeight = 1;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*2;
  myColor = color(255,255,255);
 }
 
 Particle(int x, int y){
    myX=x;
    myY=y;
      myWidth=4;
   myHeight = 1;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*10;
  myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 }
 void move(){
   myX = myX+mySpeed*Math.cos(myAngle);
   myY = myY+mySpeed*Math.sin(myAngle);
 }
 
 void show(){
   noStroke();
   fill(255,200);
   ellipse((float)myX*2,(float)myY*2,myWidth,myHeight);
 }
}//end Particle class

class OddBall extends Particle{// inheritence class
  OddBall(){//default no argument constructor
    myWidth=10;
   myHeight = 10;
 myX= 400;
   myY = 400;
myAngle = Math.random()*2*Math.PI;
  mySpeed =5;
 }
 
 void show(){
  // fill(255);

fill(252,200);
stroke(0);   ellipse((float)myX,(float)myY,myWidth+10,myHeight+15);
    fill(255);

   ellipse((float)myX,(float)myY+5,myWidth+30,myHeight+6);
   
   //green lights
   fill(81,240,51);
   stroke(0);
   strokeWeight(0.5);
   ellipse((float)myX-13,(float)myY+4,myWidth-5,myHeight-5);
   ellipse((float)myX-5,(float)myY+7,myWidth-5,myHeight-5);
   ellipse((float)myX+5,(float)myY+7,myWidth-5,myHeight-5);
    ellipse((float)myX+13,(float)myY+4,myWidth-5,myHeight-5);
}
   void move(){
     
   myX= myX+mySpeed*Math.cos(myAngle);
 myY = myY+mySpeed*Math.sin(myAngle);
    if(myX<0){
      myX=800; 
     }if(myX>800){
      myX=0; 
     }if(myY>800){
      myY=0; 
    }if(myY<0){
     myY=800; 
  }
 }
}

Particle [] part;
OddBall song;

void setup(){
 size(800,800);

 part = new Particle[20000];
 song = new OddBall();
  for(int i = 1; i < part.length; i++){
   part[i] = song; 
  }
 for(int i = 0; i < part.length; i++){
   
  part[i] = new Particle(200,200); 
 }
}

void draw(){
 background(0,100);
  song.move();
  song.show();
  for(int i = 0; i < part.length; i++){
  part[i].move();
  part[i].show();
  }
 

}
