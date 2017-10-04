NormalParticle[] aBunch = new NormalParticle[500];
void setup()
{
size(500,500);
for(int i = 0; i < aBunch.length; i++)
{
aBunch[i] = new NormalParticle();
}
//aBunch[0] = new OddballParticle();
}

void draw()
{
	background(0);
for(int i =0; i< aBunch.length; i++)
aBunch[i].show();
aBunch[i].move();
}
class NormalParticle implements Particle
{
	double myX, my, myDirection;
  int mySpeed;
  int myColor;
  NormalParticle()
  {
    myX =250;
    myY =250;
    mySpeed=Math.random()*10;
    myDirection=Math.random()*2*Math.PI;
    myColor=(int)(Math.random*256)+1;
}
public void move()
{
  myX=myX+mySpeed * Math.cos(myDir);
  myY=myY+mySpeed *Math.sin(myDir);
}
public void move()
{
  fill(myColor);
  ellipse((float)myX, (float)myY, 30,30);
}
interface Particle
{
	public void show();
  public void move();
}
class OddballParticle //uses an interface
{
	int myX, myY;
OddballParticle()
{
  myX =250;
  myY =50;
}
public void show()
{
  rect(myX,myY, 30, 30);
}
public void move()
{
myX= myX +(int)(Math.random()*3)-1;
myY = myY +(int)(Math.random()*3)-1;
}
//class JumboParticle //uses inheritance

	//your code here
}
}