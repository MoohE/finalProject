float xPos,yPos,ySpeed,zPos,vPos,xSpeed,cPos;
public class car{
  public car(){
    xPos=250;
    yPos=400;
    zPos=260;
    vPos=415;
    cPos=360;
  }
    public void move() {
    yPos+=ySpeed; 
    xPos+=xSpeed;
    for (int i = 0; i<3; i++) {
      w[i].xPos-=3;
    }
  }
  public void drawCar() {
    stroke(255);
    fill(255,255,0);
    triangle(25,25,55,55,55,90);
     triangle(cPos,yPos,cPos+135,435,495, yPos-20);
    noFill();
    strokeWeight(2);
    fill(255,0,0);
    rect(xPos,yPos,2,-10);// spoiler
    rect(xPos,yPos,125,20); //body
    noFill();
    rect(xPos+15,yPos,70,-17);//window of car
   fill(0,0,0);
     ellipse(xPos+15,yPos+20,20,20);
     ellipse(xPos+15,yPos+20,10,10);
     ellipse(xPos+100,yPos+20,20,20);
     ellipse(xPos+100,yPos+20,10,10);
     
  }
   public void jump() {
    ySpeed=-10;
    
   
  }
  public void drag() {
    ySpeed+=0.4;
  
  }
  public void checkCollisions() {
    if (yPos>800) {
      
      end=false;
    }
    for (int i = 0; i<3; i++) {
      if ((xPos<w[i].xPos+10&&xPos>w[i].xPos-10)&&(yPos<w[i].opening-100||yPos>w[i].opening+100)) {
        end=false;
      }
    }
  }
}
