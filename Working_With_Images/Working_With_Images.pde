PImage currentImage;

int imageWidth = 800;
int imageHeight = 800;

void setup()
{
  //Set the window to be full screen
  fullScreen();
  
  //Set current image to be the happy image using loadImage
  currentImage = loadImage("happy.jpg");
  
  //Set image mode to be center so that the image gets displayed with its center at the point I choose
  imageMode(CENTER);
}

void draw()
{
  //Set the background to white
  background(255);
  
  //Draw the current image in the middle of the window on top of the background
  image( currentImage, width/2, height/2, imageWidth, imageHeight );
}

void keyPressed()
{
  //If the current key is h OR H...
  if( key == 'h' || key == 'H' )
  {
    //Set the current image to the happy image
    currentImage = loadImage("happy.jpg");
  }
  else if( key == 's' || key == 'S' ) //Otherwise, if the current key is s OR S...
  {
    //Set the current image to the sad image
    currentImage = loadImage("sad.jpg");
  }
}
