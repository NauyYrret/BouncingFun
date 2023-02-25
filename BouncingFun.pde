//Initializing
float x = 0;
float y = 0;
float xspeed = 5;
float yspeed = 2.3;

//Window
void setup (){
  size(400, 400);
}

//Functions
void draw(){
  background (255);
  displayBall();
  moveBall();
  checkEdges();
}

//Showing the ball
void displayBall(){
  stroke(0);
  fill(127);
  ellipse(x,y,32,32);
}

//Ball Movement
void moveBall(){
  x = x + xspeed;
  y = y + yspeed;
}

//Edge Checking
void checkEdges(){
  if(x > width || x < 0){
    xspeed = xspeed * -1;
  }
  if (y > height || y < 0){
    yspeed =  yspeed * -1;
  }
}
