 class walls{
      float xPos, opening;
      boolean cashed = false;
     walls(int i){
      xPos = 100+(i*200);
      opening = random(600)+100;
     }
     void drawPillar(){
       line(xPos,0,xPos,opening-100);  
       line(xPos,opening+100,xPos,800);
     }
     void checkPosition(){
      if(xPos<0){
       xPos+=(200*3);
       opening = random(600)+100;
       cashed=false;
      } 
      if(xPos<250&&cashed==false){
       cashed=true;
       score++; 
      }
     }

    }
    void reset(){
     end=true;
     score=0;
     c.yPos=400;
     for(int i = 0;i<3;i++){
      w[i].xPos+=550;
     w[i].cashed = false;
     }
    }
    void mousePressed(){
     c.jump();
     intro=false;
     if(end==false){
       reset();
     }
    }
    void keyPressed(){
     c.jump(); 
     intro=false;
     if(end==false){
       reset();
     }
    }
