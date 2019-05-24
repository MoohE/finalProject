
class car{
  float xPos,yPos,ySpeed,zPos,vPos,vSpeed;
  car(){
    xPos=250;
    yPos=400;
    zPos=260;
    vPos=415;
    
  }
  
  void drawBird() {
    stroke(255);
    noFill();
    strokeWeight(2);
    rect(xPos,yPos,2,-10);
    rect(xPos,yPos,125,20);
    rect(zPos,yPos,70,-20);
     ellipse(zPos,vPos,20,20);
       ellipse(zPos,vPos,7,7);

   
  }
  void jump() {
    ySpeed=-10;
    vSpeed=-10;
  }
  void drag() {
    ySpeed+=0.4;
    vSpeed+=0.4;
  }
  void move() {
    yPos+=ySpeed; 
    vPos+=vSpeed;
    for (int i = 0; i<3; i++) {
      w[i].xPos-=3;
    }
  }
  void checkCollisions() {
    if (yPos>800) {
      if(vPos>800)
      end=false;
    }
    for (int i = 0; i<3; i++) {
      if ((xPos<w[i].xPos+10&&xPos>w[i].xPos-10)&&(yPos<w[i].opening-100||yPos>w[i].opening+100)) {
        end=false;
      }
    }
  }}
