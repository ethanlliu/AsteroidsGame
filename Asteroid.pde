class Asteroid extends Floater
{
  private double rotSpeed= Math.random()*2;
  public Asteroid()
  {
   corners = 6;  //the number of corners, a triangular floater has 3   
   xCorners = new int[]{-11,7,13,6,-11,-5};   
   yCorners = new int[]{-8,-8,0,10,8,0};   
   myColor = 255;   
   myCenterX =Math.random()*500;
   myCenterY =Math.random()*500; //holds center coordinates   
   myXspeed=Math.random()*2; 
   myYspeed=Math.random()*2; //holds the speed of travel in the x and y directions   
   myPointDirection=0; //holds current direction the ship is pointing in degrees 
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
public double getX(){return myCenterX;}
public double getY(){return myCenterY;}
}
