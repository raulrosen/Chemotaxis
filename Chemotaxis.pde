 Bacteria []  colony;
 int xPos ;
 int yPos ;
 void setup()   
 {     
 	size (400,400);
 	colony = new Bacteria [40];
 	for (int i =0; i < colony.length; i++)
 	{
 		colony [i] = new Bacteria (200,200);
 	}
 }   
 void draw()   
 {    

 	for (int i =0; i < colony.length; i++)
 	{
 		colony [i].move();
 		colony [i].show();
 	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX,myY,myColor;  
 	Bacteria (int x, int y)
 	{
 		myX= x;
 		myY= y;
 		myColor = (int)(Math.random()*256);

 	}
 	void move ()
 	{

 		if( xPos > myX )
 		{
 			myX = myX + (int)(Math.random()*2);
 		}
 		if (  xPos < myX)
 		{
 			myX = myX - (int)(Math.random()*2);
 		}
 		if (  yPos> myY)
 		{
 			myY = myY + (int)(Math.random()*2);
 		}
 		else if (  yPos < myY)
 		{
 			myY = myY - (int)(Math.random()*2);
 		}
 		else 
 		{
 			myX = myX + (int)(Math.random()*3)-1;
 			myY = myY + (int)(Math.random()*3)-1;
 		}
 	}
 	void show ()
 	{	noStroke ();
 		fill (100,100,myColor);
 		ellipse (myX,myY,10,10);
 	}

 } 

void mousePressed ()
{
	xPos = mouseX;
	yPos = mouseY;
}
