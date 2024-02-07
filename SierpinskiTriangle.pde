public void setup()
{
  background(0);
  size(1000,1000);
}

public void draw()
{
  fill(0,0,0,40);
  rect(0,0,1000,1000);
  sierpinski(100,800,mouseX);
}


public void sierpinski(int x, int y, int len) 
{
  if (len <= 80)
    triangle(x,y,x+len,y,x+len/2,y-len);
  else
  {
    fill(255);
    sierpinski(x, y, len/2);
    fill(155);
    sierpinski(x+len/2, y, len/2);
    fill(55);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

