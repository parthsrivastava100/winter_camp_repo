import processing.serial.*;
Serial myPort;//create object from serial class
float val;
float sum=0;
float vel=15;
int score=0;
float ypos=0;
int x=0;
int count=0;
PImage img;
PImage img2;
PImage img3;
void setup(){
  size(1900,960);
 // myPort=new Serial(this,"/dev/ttyUSB0",9600);;
   x=(int)random(1860);
   img=loadImage("parth.jpeg");
   img2=loadImage("basket.png");
   img3=loadImage("colorfuleggs1.png");
   
}
void draw()
{
  image(img,0,0,1900,960);
  if(mouseX>1770)
  image(img2,1770,860,130,100);
  else
  image(img2,mouseX,860,130,100);
 /* if(myPort.available()>0)
  {
    for(int i=0;i<=9;i++)
    {val=myPort.read();
    sum+=val;
}
  }
  
  val=sum/10;
  */
  //sum=0;
  fill(255);
  rect(1700,0,200,50);
  fill(0);
  textSize(40);
   text("Score:",1702,40);
   text(score,1820,40);
// val=map(val,0,10,0,920);
  fill(0);
 image(img3,x,ypos,40,60);
  if(ypos>=920 && (x>=mouseX && x<=mouseX+90))
  {
    score+=5;
     x=(int)random(1860);
     ypos=0;
   if(score%15==0)
     {
        vel+=5;
     }
  } 
  else if(ypos>=920)
  { x=(int)random(1860);
   ypos=0;  
   count++;
   
  }
ypos+=vel;
  
//if(count==3)
//{
  //println(score);
//System.exit(0);
//}
  }
