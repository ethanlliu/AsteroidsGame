class Spaceship extends Floater { 
public Spaceship() {   
   corners = 4;  //the number of corners, a triangular floater has 3   
   xCorners =new int[]{-8,16,-8,-2};   
   yCorners= new int[]{-8,0,8,0};   
   myColor = 255;   
   myCenterX =250;
   myCenterY =250; //holds center coordinates   
   myXspeed=0; 
   myYspeed=0; //holds the speed of travel in the x and y directions   
   myPointDirection=0; //holds current direction the ship is pointing in degrees 
}

public void hyperspace()
{
   myCenterX =Math.random()*500;
   myCenterY =Math.random()*500;
   myXspeed=0; 
   myYspeed=0;
}
}
