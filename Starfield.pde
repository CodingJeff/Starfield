Particle[] aBunch = new Particle[1200];
void setup()
{
  size(500, 500);
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new NormalParticle();
  }
  aBunch[0] = new OddballParticle();
  aBunch[1] = new JumboParticle();
}

void draw()
{
  background(0);
  for (int i =0; i< aBunch.length; i++)
  {
    aBunch[i].show();
    aBunch[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, myDirection;
  int mySpeed;
  int myColor;
  NormalParticle()
  {
    myX =250;
    myY =250;
    mySpeed=(int)(Math.random()*10);
    myDirection=Math.random()*2*Math.PI;
    myColor=(255);
  }
  public void move()
  {
    myX=myX+mySpeed * Math.cos(myDirection);
    myY=myY+mySpeed *Math.sin(myDirection);
  }
  public void show()
  {
    fill(myColor, 0, 0);
    ellipse((float)myX, (float)myY, 15, 15);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myX, myY;
  OddballParticle()
  {
    myX =250;
    myY =50;
  }
  public void show()
  {
    rect(myX, myY, 30, 30);
  }
  public void move()
  {
    myX= myX +(int)(Math.random()*3)-1;
    myY = myY +(int)(Math.random()*3)-1;
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
    fill(100, 100, 100);
    ellipse((float)myX, (float)myY, 150, 150);
  }
}