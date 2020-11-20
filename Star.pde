class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  private float size;

  public Star()
  {
   myX =(int)(Math.random()*500);
   myY =(int)(Math.random()*500);
   size=(float)(Math.random()*3);
  }
  public void show()
  {
    fill(255);
    ellipse(myX,myY,size,size);
  }
}
