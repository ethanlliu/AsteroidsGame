Star[] night =new Star[200];
Spaceship cool = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i =0; i <night.length;i++)
  {
    night[i] =new Star();
  }
}
public void draw() 
{
  background(4);
  cool.show();
  cool.move();
  if(keyPressed == true && keyCode == RIGHT)
    {
      cool.turn(5);
      
    }
    else if(keyPressed == true && keyCode == LEFT)
    {
      cool.turn(-5);
    }
    else if(keyPressed == true && keyCode == UP)
    {
      cool.accelerate(0.1);
    }
    else if(keyPressed == true && keyCode == DOWN)
    {
      cool.hyperspace();
    }
  for(int i =0; i <night.length;i++)
  {
    night[i].show();
  }
  
}
public void mousePressed()
{
  
}

