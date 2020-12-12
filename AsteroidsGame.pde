ArrayList <Asteroid> nick = new ArrayList<Asteroid>();
Star[] night =new Star[200];
Spaceship cool = new Spaceship();
public void setup() 
{
  size(500,500);
  for(int i =0; i <night.length;i++)
  {
    night[i] =new Star();
  }
  
  for(int i=0; i <10; i++)
  {
  nick.add(new Asteroid());
  }
}
public void draw() 
{
  background(4);
  for(int i=0; i <nick.size(); i++)
  {
  nick.get(i).show();
  nick.get(i).move();
  float d = dist ((float)cool.getX(),(float)cool.getY(),(float)nick.get(i).getX(),(float)nick.get(i).getY());
  if(d<15){
  nick.remove(i);
  }
  }
  
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
    
  for(int i =0; i <night.length;i++)
  {
    night[i].show();
  }
  
}
public void keyPressed()
{
  if(keyPressed == true && keyCode == DOWN)
    {
      cool.hyperspace();
    }
}
