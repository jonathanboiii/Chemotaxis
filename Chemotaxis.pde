Bacteria [] colony;
void setup()   
 {     
   size(200,200);
   frameRate(10);
   colony = new Bacteria[50];
   for (int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria(); 
   }
 }   
 void draw()   
 {    
   background(0);
   for (int i = 0; i < colony.length; i++) 
   {
   colony[i].show();
   colony[i].move();
   }
 } 
 
 
 class Bacteria    
 {     
   int myX,myY,randColor;
   Bacteria()
   {
     myX = (int)(Math.random()*150)+50;
     myY = (int)(Math.random()*150)+50;
     randColor = (int)(Math.random()*255);
   }
   void move()
   {
     myX += (int)(Math.random()*10)-5;
     myY += (int)(Math.random()*10)-5;
     
   }
   void show()
   {
     fill(randColor,randColor,randColor);
     ellipse(myX,myY,20,20);
   }
   
   
 }    
