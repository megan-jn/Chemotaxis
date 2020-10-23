 //declare bacteria variables here  
Bacteria [] whack = new Bacteria[50];
 void setup()   
 {     
   //initialize bacteria variables here 
   size(400, 400);
   for(int i = 0; i < whack.length; i++)
   {
     whack[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   //move and show the bacteria 
   background(200);
   for(int i = 0; i < whack.length; i++)
   {
     whack[i].show();
     whack[i].move();
   }
   stroke(245, 241, 208);
   fill(242, 241, 230);
   ellipse(mouseX, mouseY, 15, 15);
   fill(245, 244, 240);
   ellipse(mouseX-5, mouseY+5, 15, 15);
   fill(227, 226, 225);
   ellipse(mouseX+5, mouseY+5, 15, 15);
   fill(0);
   textSize(11);
   text("souls", mouseX-13, mouseY+5);
 }  
 class Bacteria    
 {     
   //lots of java! 
   int myX;
   float myY;
   int myColor;
   Bacteria()
   {
     myColor = color((int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*200), (int)(Math.random()*100)+40);
     myX = (int)(Math.random()*400);
     myY = (int)(Math.random()*400);
   }
   void move()
   {
     if(mouseX > myX)
     {
       myX = myX + (int)(Math.random()*15)+1;
     } else {
       myX = myX + (int)(Math.random()*15)-10;
     }
     if(mouseY > myY)
     {
       myY = myY + (int)(Math.random()*10)+1;
     } else {
       myY = myY + (int)(Math.random()*10)-5;
     }
     if(myX < -100 || myX > 500)
     {
       myX = 0;
     }
   }
   void show()
   {
     fill(myColor);
     stroke(myColor);
     ellipse(myX, myY, 40, 40);
     //triangle(myX-20, myY-7, myX-19, myY-27, myX-7, myY-15);
     //triangle(myX+7, myY-15, myX+19, myY-27, myX+20, myY-7);
     quad(myX-20, myY, myX-10, myY, myX-10, myY+30, myX-23, myY+40);
     quad(myX-12, myY, myX-2, myY, myX-3, myY+39, myX-12, myY+32);
     quad(myX, myY, myX+10, myY, myX+13, myY+30, myX-2, myY+40);
     quad(myX+10, myY, myX+20, myY, myX+23, myY+43, myX+10, myY+33);
     fill(222, 160, 146, 170);
     ellipse(myX, myY+8, 15, 15);
     fill(0);
     ellipse(myX-8, myY-7, 3, 3);
     ellipse(myX+8, myY-7, 3, 3);
   }
 }    
