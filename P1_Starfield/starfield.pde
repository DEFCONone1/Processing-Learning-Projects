private Star[] stars;
private float speed;

void setup()
{
  size(900, 600);
  setUpStars(300);
}

void draw()
{
  setWarpSpeed(7.5);
  
  background(0);
  translate(width/2, height/2);
  
  drawStars();
}

float getWarpSpeed()
{
  return speed;
}

private void setWarpSpeed(float s)
{
   //speed = map(mouseY, 0, height, 2, 10);
   speed = s;
}

private void setUpStars(int amount)
{
  stars = new Star[amount];
  
  for (int i = 0; i < stars.length; i++)
  {
      stars[i] = new Star();
  }
}

private void drawStars()
{
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].update();
    stars[i].show();
  }
}