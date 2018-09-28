void setup()
  {
      noLoop();
      size(475, 600);
      background(96, 203, 62);
      textSize(50);
      
     
 }
  
  
  void draw()
  { 
       
    
       frameRate(((int)(Math.random()*14)) + 4);
       background(142, 242, 171);
    
       Die Marc = new Die(100, 100);
       Marc.show();
       Marc.roll();
       Marc.value();
       
       Die Andrea = new Die(200, 100);
       Andrea.show();
       Andrea.roll();
       Andrea.value();
       
       Die Brandon = new Die(300, 100);
       Brandon.show();
       Brandon.roll();
       Brandon.value();
       
       Die David = new Die(100, 200);
       David.show();
       David.roll();
       David.value();
       
       Die Xiang = new Die(200, 200);
       Xiang.show();
       Xiang.roll();
       Xiang.value();
       
       Die Michael = new Die(300, 200);
       Michael.show();
       Michael.roll();
       Michael.value();
       
       Die Aronce = new Die(100, 300);
       Aronce.show();
       Aronce.roll();
       Aronce.value();
       
       Die Philip = new Die(200, 300);
       Philip.show();
       Philip.roll();
       Philip.value();
       
       Die Damien = new Die(300, 300);
       Damien.show();
       Damien.roll();
       Damien.value();
      
      if(Marc.value() == Andrea.value() && Marc.value() == Brandon.value()){
      
        text("You Won: $" + (Damien.value() + Philip.value() + Aronce.value() + Michael.value() + Xiang.value() + David.value() + Brandon.value() + Andrea.value() + Marc.value()), 73, 550);
        noLoop();
      }
      
       
      
      if(David.value() == Xiang.value() && David.value() == Michael.value()){
    
      text("You Won: $" + (Damien.value() + Philip.value() + Aronce.value() + Michael.value() + Xiang.value() + David.value() + Brandon.value() + Andrea.value() + Marc.value()), 73, 550);
      noLoop();
      }
     
       
      
      if(Aronce.value() == Philip.value() && Aronce.value() == Damien.value()){
 
      text("You Won: $" + (Damien.value() + Philip.value() + Aronce.value() + Michael.value() + Xiang.value() + David.value() + Brandon.value() + Andrea.value() + Marc.value()), 73, 550);
      noLoop();
      }
     
       
  }
  
  
 void mousePressed() {
  loop();  // Holding down the mouse activates looping
  
}

void mouseReleased() {
  noLoop();  // Releasing the mouse stops looping draw()
}

  class Die //models one single dice cube
  {
      int myX, myY, Size, P;
      int a, b, c, d, e, f;
   
       
      
      Die(int x, int y) //constructor
      {
          P = (int)(Math.random()*6) + 1;
          myX = x;
          myY = y;
          Size = 70;
          
           
      }
      
      int value(){
        
       
         
         if(P == 1) {
             a = 1;
           
          }
      
          
          if(P == 2) {
            b = 2;
          }
          
          if(P == 3) {
             c = 3;
          }
          
          if(P == 4) {
            d = 4;
          }
          
          if(P == 5) {
             e = 5;
          }
          
          if(P == 6) {
             f = 6;
          } 
        
          
          return a + b + c + d + e + f;
       
        
        
      }
      
      
      
      
      void roll()
      {
          if(P == 1) {
           fill(0);
           ellipse(myX + Size/2, myY + Size/2, 10, 10); 
           
          }
      
          
          if(P == 2) {
           fill(0);
           ellipse(myX + 50, myY + 50 , 10, 10);
           ellipse(myX + 20, myY + 20, 10, 10);
           
          }
          
          if(P == 3) {
           fill(0);
           ellipse(myX + Size/2, myY + Size/2 , 10, 10); 
           ellipse(myX + 50, myY + 50, 10, 10);
           ellipse(myX + 20, myY + 20, 10, 10);
          
          }
          
          if(P == 4) {
           fill(0);
           ellipse(myX + 20, myY + 20, 10, 10); 
           ellipse(myX + 50, myY + 50, 10, 10); 
           ellipse(myX + 20, myY + 50, 10, 10); 
           ellipse(myX + 50, myY + 20, 10, 10); 
           
          }
          
          if(P == 5) {
           fill(0);
           ellipse(myX + Size/2, myY + Size/2 , 10, 10); 
           ellipse(myX + 20, myY + 20, 10, 10); 
           ellipse(myX + 50, myY + 50, 10, 10); 
           ellipse(myX + 20, myY + 50, 10, 10); 
           ellipse(myX + 50, myY + 20, 10, 10); 
          
          }
          
          if(P == 6) {
           fill(0);
           ellipse(myX + 20, myY + 15, 10, 10);
           ellipse(myX + 20, myY + 35, 10, 10); 
           ellipse(myX + 20, myY + 55, 10, 10); 
           ellipse(myX + 50, myY + 15, 10, 10); 
           ellipse(myX + 50, myY + 35, 10, 10); 
           ellipse(myX + 50, myY + 55, 10, 10);
          
          }
          
          
      }
      void show()
      {
        fill(240, 240, 240);  
        rect(myX, myY, Size, Size, 15);
      }
  }




