//Flappy Code
   
    car c= new car();
    walls[] w = new walls[3];
    boolean end=false;
    boolean intro=true;
    int score=0;
    
    
    void setup(){
      size(500,800);
      for(int i = 0;i<3;i++){
      w[i]=new walls(i);
      
      }
    }
    void draw(){
      background(15,20,35,60);
       background(15,20,35,60);
       rect(-10,100,800,100);
    
    


      if(end){
      c.move();
      }
      c.drawCar();
      if(end){
      c.drag();
      }
      c.checkCollisions();
      for(int i = 0;i<3;i++){
      w[i].drawPillar();
      w[i].checkPosition();
      }
      fill(0,128,0);
      stroke(255);
      textSize(32);
      if(end){
      rect(20,20,100,50);
      fill(255);
      text(score,30,58);
      }else{
      rect(150,100,200,50);
      rect(150,200,200,50);
      fill(255);
      if(intro){
        text("Flappy Car",155,140);
        text("Click to Play",155,240);
      }else{
      text("you crashed",170,140);
      text("next lap",180,240);
      text(score,280,240);
      }
      }
    }
   
    
   
