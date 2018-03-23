PImage Cat;

void setup(){
  size(800,800);
  
  
  Cat = loadImage("Cat.jpg");
  Cat.resize(800,800);
  
  background(Cat);
}

int xPos1 = 492;
int yPos1 = 328;
int xPos2 = 337;
int yPos2 = 315;
int Acceleration = 5;
int size = 15;
boolean GetSmall = false;
boolean Finished = false;
int WaitTime = 0;

void draw(){
  noStroke();
  fill(255,25,25);
  
  if(mousePressed){
    fill(255,200,200);
    ellipse(492, 328, size, size);
    ellipse(337, 315, size, size); 
    println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n"); 
    print(size);
    size = size+1;
    
    xPos1 = 492;
    yPos1 = 328;
    xPos2 = 337;
    yPos2 = 315; 
    

  }
  
  if (keyPressed){
    print(key);
    xPos1 = xPos1+=2*Acceleration;
    yPos1 = yPos1+=2*Acceleration;
    xPos2 = xPos2+=2*Acceleration;
    yPos2 = yPos2+=2*Acceleration;
    
    ellipse(xPos1,yPos1,size*2,size*2);
    ellipse(xPos2,yPos2,size*2,size*2);
  }

  if (xPos1> 800){
    if (Finished = true){
      // Reset Values
      image(Cat,0,0,800,800);
      xPos1 = 492;
      yPos1 = 328;
      xPos2 = 337;
      yPos2 = 315;
      size = size-2;
      WaitTime = 0;
      // Reset Debounce
      Finished = false;
    }
    
    if (Finished = false){
     if (WaitTime>15){
       // Explosion
       
       Finished = true;  
     }
    ellipse(800,750,700,500);
    WaitTime = WaitTime+1;
    }
  }
 

   
  if (size>100){
    size = 100;
  }
}
