ArrayList <Asteroid> nick = new ArrayList <Asteroid> ();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
Star[] night = new Star[200];
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
  if(d<15)
  {
  nick.remove(i);
  }
  }
 
  for(int i =0; i <night.length;i++)
  {
    night[i].show();
  }
  
  for(int i =0; i <shots.size();i++)
  {
    shots.get(i).show();
    shots.get(i).move();
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
    
    
    
  
  
}
public void keyPressed()
{
  if(keyPressed == true && keyCode == DOWN)
    {
      cool.hyperspace();
    }
    
    else if(key == ' ')
    {
      shots.add(new Bullet(cool));
    }    
}
