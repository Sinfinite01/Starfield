//your code here
Particle[] bob;
int circleNum=500;

void setup()
{
	//your code here
	background(255);
	bob= new Particle[circleNum];
	size(500,500);
	for(int i=0; i<bob.length; i++)
  {
    bob[i]= new Particle();
    if(i%10==0)
    {
    	bob[i]= new OddballParticle();
    }
  }
}
void draw()
{
	//your code here
	for(int i=0; i<bob.length; i++)
  {   
    bob[i].show();
	bob[i].move();
  }
}
void mousePressed()
{
	bob= new Particle[circleNum];
	for(int i=0; i<bob.length; i++)
  {   
    bob[i]= new Particle();
    if(i%10==0)
    {
    	bob[i]= new OddballParticle();
    }
  }
}
class Particle
{
	//your code here
	double myX;
	double myY;
	double objectSpeed;
	double objectAngle;
	int objectColor;
	double mySize;

	Particle()
	{
		myX=250;//(double)(Math.random()*501);
		myY=250;//(double)(Math.random()*501);\
		mySize=20;
		objectAngle=Math.random()*2*Math.PI;
		objectSpeed=Math.random()+0.5;
		for(int i=0;i<Math.random()*1000000;i++)
		{
			move();
		}


	}
	void move()
	{
		myX=(Math.cos(objectAngle)*objectSpeed)+myX;
		myY=(Math.sin(objectAngle)*objectSpeed)+myY;
		mySize=mySize+0.1;
		if(myX<0-mySize||myX>500+mySize||myY<0-mySize||myY>500+mySize)
		{
			myX=250;
			myY=250;
			objectSpeed=Math.random()+0.1;
			mySize=20;
		}

	}
	void show()
	{
		objectColor=color(240,94,35);
		fill (objectColor);
		stroke(255);
		ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);

	}

}

class OddballParticle extends Particle  //inherits from Particle
{
	//your code here
	double myX;
	double myY;
	double objectSpeed;
	double objectAngle;
	int objectColor;
	double mySize;

	OddballParticle()
	{
		myX=250;//(double)(Math.random()*501);
		myY=250;//(double)(Math.random()*501);\
		mySize=10;
		objectAngle=Math.random()*2*Math.PI;
		objectSpeed=Math.random()*2+1;
		for(int i=0;i<Math.random()*1000000;i++)
		{
			move();
		}


	}
	void move()
	{
		myX=(Math.cos(objectAngle)*objectSpeed)+myX;
		myY=(Math.sin(objectAngle)*objectSpeed)+myY;
		if(myX<0-mySize||myX>500+mySize||myY<0-mySize||myY>500+mySize)
		{
			myX=250;
			myY=250;
			objectSpeed=Math.random()*2+1;
			mySize=10;
		}

	}
	void show()
	{
		objectColor=color(102,51,0);
		fill (objectColor);
		stroke(255);
		ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);

	}
}


