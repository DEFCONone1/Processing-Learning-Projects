class Star 
{
  float x;
  float y;
  float z;
  
  // Previous Z location
  float pz;

  Star() 
  {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width/2);
     
    pz = z;
  }
  
  
  void update()
  {
    z = z-getWarpSpeed();
    
    if (z < 1)
    {
      // reset Z and set new X & Y values for respawn
      z = width/2; 
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      
      //set previous Z pos to new reset value of Z
      pz = z;
    }
  }
  
  void show()
  {
    fill(255);
    noStroke();
    
    float sx = map(x / z, 0, 1, 0, width/2);
    float sy = map(y / z, 0, 1, 0, height/2);
    
    // 'star heads'
    float r = map(z, 0, width/2, 12, 0);
    ellipse(sx, sy, r, r);
    
    float px = map(x / pz, 0, 1, 0, width/2);
    float py = map(y / pz, 0, 1, 0, height/2);
    
    //reset previous z pos
    pz = z;
    
    stroke(255);
    line(px, py, sx, sy);
  }
 
}