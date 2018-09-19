void setup()
{
  //Set the window to full screen
  fullScreen();
  
  //Set the fill colour to black
  fill(0);
  
  //Set the stroke weight to 10
  strokeWeight(10);
  
  //Set the rectangle mode to corners to make the creation of rectangles easier
  rectMode(CORNERS);
}

void draw()
{
  //Set background to white
  background(255);
  
  //Draw the lines for the window to make four quadrants
  line(width/2, 0, width/2, height); //vertical (up-down) line
  line(0, height/2, width, height/2); //horizontal (left-right) line
  
  //If mouse x is less than half the width and mouse y is less than half the height...
  if( mouseX < width/2 && mouseY < height/2 )
  {
    //Draw the rectangle using the corners of the top-left quadrant
    rect(0, 0, width/2, height/2);
  }
  else if( mouseX > width/2 && mouseY < height/2 ) //Otherwise, if mouse x is greater than half the width and mouse y is less than half the height...
  {
    //Draw the rectangle using the corners of the top-right quadrant
    rect(width/2, 0, width, height/2);
  }
  else if( mouseX < width/2 && mouseY > height/2 ) //Otherwise, if mouse x is less than half the width and mouse y is greater than half the height...
  {
    //Draw the rectangle using the corners of the bottom-left quadrant
    rect(0, height/2, width/2, height);
  }
  else if( mouseX > width/2 && mouseY > height/2 ) //Otherwise, if mouse x is greater than half the width and mouse y is greater than half the height...
  {
    //Draw the rectangle using the corners of the bottom-right quadrant
    rect(width/2, height/2, width, height);
  }
}
