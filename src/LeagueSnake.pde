//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x;
int y;



// Add a constructor with parameters to initialize each variable.
Segment(int x ,int y){
this.x = x;
this.y = y;

}
}


//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
ArrayList<Segment> tail = new ArrayList<Segment>();
int direction = UP;
int pieces = 1;
Segment head = new Segment(250, 250);
int foodX;
int foodY;




//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500,500);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
  foodX = ((int)random(50)*10);
  foodY = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
 background(0,250,0);
 drawFood();
  move();
 drawSnake();
 eat();
 manageTail();
 drawTail();
 checkTailCollision();
 
}

void drawFood() {
  //Draw the food
fill(#FA0808);
rect(foodX, foodY, 10,10);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
 fill(#235AB7);
rect(head.x, head.y, 10,10);

}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*


void drawTail() {
  //Draw each segment of the tail 
for(int i = 0 ; i< tail.size(); i++){
rect(tail.get(i).x,tail.get(i).y ,10,10);
}
}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  checkTailCollision();
  
  tail.add(new Segment(head.x,head.y));
  if( tail.size() > pieces){
  tail.remove(0);
  }
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  for(int i =0; i < tail.size()-1; i++){
   if(head.x == tail.get(i).x && head.y == tail.get(i).y){
     pieces = 1;
      tail = new ArrayList<Segment>();
     tail.add(new Segment(head.x,head.y));
     
  }
  }
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if(key == CODED){
  if(keyCode == UP){
   direction = UP;
  }
  else if (keyCode == DOWN){
     direction = DOWN;
  }
   else if (keyCode == LEFT){
     direction = LEFT;
  }
   else if (keyCode == RIGHT){
     direction = RIGHT;;
  }
}
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direction) {
  case UP:
    // move head up here 
    head.y-=10;
    break;
  case DOWN:
    // move head down here 
    head.y+=10;
    break;
  case LEFT:
   // figure it out 
   head.x-=10;
    break;
  case RIGHT:
    // mystery code goes here 
    head.x+=10;
    break;
  }
  checkBoundaries();
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 if( head.x > 500){
 head.x = 0;
 }
 else if (head.x < 0){
   head.x = 500;
 }
 else if (head.y > 500){
   head.y = 0;
 }
 else if (head.y < 0){
   head.y = 500;
 }

}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
if(head.x == foodX && head.y == foodY){
  pieces += 1;
  dropFood();
  //tail.add(new Segment(head.x,head.y));
  
}
}
