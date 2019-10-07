
void setup()
{
	noLoop();
	size(1000,1000);
}
void draw()
{
	int counter = 0;
	background(200,200,200);
	for(int x= 120; x<1000; x=x+120){
		Die bob = new Die(x,120);
		counter = counter + Die.num;
		Die.show();
	}

	text("The total number of red dots are: " + counter);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int sizee, num, myX, myY;
	

	Die(int x, int y) 
	{
		//variable initializations here
		
		myX=x;
		myY=y;
	}


	void roll()
	{
		num = ((int)(Math.random()*6)+1);
	}


	void show()
	{
		rect(myX,myY,100,100);
		if(num == 1){
			fill(255,0,0);
			noStroke();
			ellipse(myX+50,myY+50,15,15);
		}
		if(num == 2){
			fill(255,0,0);
			noStroke();
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		if(num == 3){
			fill(255,0,0);
			noStroke();
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+50,myY+50,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		if(num == 4){
			fill(255,0,0);
			noStroke();
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+80,myY+80,15,15);//
			ellipse(myX+80,myY+20,15,15);
			ellipse(myX+20,myY+80,15,15);//
		}
		if(num == 5){
			fill(255,0,0);
			noStroke();
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+80,myY+80,15,15);//
			ellipse(myX+80,myY+20,15,15);
			ellipse(myX+20,myY+80,15,15);//
			ellipse(myX+50,myY+50,15,15);
		}
		if(num == 6){
			fill(255,0,0);
			noStroke();
			ellipse(myX+20,myY+20,15,15);
			ellipse(myX+80,myY+80,15,15);//
			ellipse(myX+80,myY+20,15,15);
			ellipse(myX+20,myY+80,15,15);//
			ellipse(myX+20,myY+50,15,15);
			ellipse(myX+80,myY+50,15,15);
		}
		

	}
}
