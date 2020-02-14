int n,add=0,flag=0,i=0,j=0,control,control1,sum=0;
void setup()
{  size(1000,1000);
  background(110,220,220);
 // fill(123,234,222);
 // rect(50,50,200,200);
  fill(0);
  textSize(30);
  text("INSTRUCTIONS:",100,60);
  text("Enter a key in between 2-9 to decide the grid order",100,100);
  text("Player 1 plays with a cross",100,140);
  text("Player 2 plays with a circle",100,180);
}
/*
PLAYER 1 GETS A VALUE 1 IN THE ARRAY, THAT IS, CROSS REPRESENTS 20
PLAYER 2 GETS A VALUE 2 IN THE ARRAY, THAT IS, CIRCLE REPRESENTS 2 */
int [][] arr;
void keyPressed()
{
     background(100,250,120);
     n=key-'0';
     arr=new int[n][n];
 }
void draw(){
  if(n!=0)
   add=1000/n;
     i=add;
  for(int count=1;count<n;count++)
  {
    strokeWeight(12);
    line(i,0,i,1000);
    i+=add;
  }
 i=add;
  for(int count=1;count<=n;count++)
  {
    line(0,i,1000,i);
    i+=add;
  }
  i=add;
   j=add;
}
    void mousePressed()
    {
       for(int count=1;count<=n;count++)
  {
    if(mousePressed && mouseX>(i-1*add) && mouseX<i)
    {
      for(int count2=1;count2<=n;count2++)
      {
     if(mousePressed && mouseY>(j-1*add) && mouseY<j)
     {
      if(flag==0)
      {strokeWeight(7);
       line(i-1*add+70,j-1*add+70,i-70,j-70);
       line(i-1*add+70,j-70,i-70,j-1*add+70);
     flag=1;
     arr[count2-1][count-1]=20;
    } 
    else if(flag==1)
    {
      strokeWeight(7);
      fill(255);
      ellipse(i-add/2,j-add/2,add/2,add/2);
       flag=0;
       arr[count2-1][count-1]=2;
    }
         } 
     j+=add;
      }
    } 
    
  i+=add;
 for(control=0;control<n;control++)
 {
  for( control1=0;control1<n;control1++)
{
  sum+=arr[control][control1];
}
if(sum==(20*n) || sum==(2*n))
{
  if(sum==(20*n))
  {
    background(100,200,175);
    textSize(50);
    text("Player 1 WINS !!!!",250,400);
  }
  else if(sum==(2*n))
  {
    background(100,200,175);
    textSize(50);
    text("Player 2 WINS!!!!",250,400);
  }
  exit();
}
sum=0;
 }
 sum=0;
 for(control1=0;control1<n;control1++)
 {
  for( control=0;control<n;control++)
{
  sum+=arr[control][control1];
}
if(sum==(20*n) || sum==(2*n))
{
  if(sum==(20*n))
  {
    background(100,200,175);
    textSize(70);
    text("Player 1 WINS !!!!",250,400);
    delay(600);
  }
  else if(sum==(2*n))
  {
    background(100,200,175);
    textSize(70);
    text("Player 2 WINS!!!!",250,400);
    delay(600);
   }
  exit();
}
sum=0;
 }
 sum=0;
 for(control1=0;control1<n;control1++)
 sum+=arr[control1][control1];
 if(sum==(20*n) || sum==(2*n))
{
  if(sum==(20*n))
  {
    background(100,200,175);
    textSize(70);
    text("Player 1 WINS !!!!",250,400);
    delay(600);
  }
  else if(sum==(2*n))
  {
    background(100,200,175);
    textSize(70);
    text("Player 2 WINS!!!!",250,400);
    delay(600);
  }
  exit();
}
 sum=0;
  for(control1=n-1;control1>=0;control1--)
 sum+=arr[n-1-control1][control1];
 if(sum==(20*n) || sum==(2*n))
{
  if(sum==(20*n))
  {
    background(100,200,175);
    textSize(70);
    text("Player 1 WINS !!!!",250,400);
    delay(600);
  }
  else if(sum==(2*n))
  {
    background(100,200,175);
    textSize(70);
    text("Player 2 WINS!!!!",250,400);
    delay(600);
  }
  exit();
}
 sum=0;
}
  
  }
  

  
