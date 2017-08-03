PImage catPic;
int acceleration;
int xposL;
int yposL;
void setup(){
  size(600, 500);
  catPic = loadImage("cat.jpg");
  catPic.resize(600,500);  // to match your size
  background(catPic);
  xposL=287;
  yposL=302;
  acceleration=3;
}
void draw(){
  if(mousePressed){
  println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");
  }
  noStroke();
  fill(265,215,30);
  ellipse(xposL, yposL, 20, 20);
  ellipse(xposL+130, yposL+10, 20, 20);
  if (yposL>height || xposL>width){
    background(catPic);
    xposL=287;
    yposL=302;
    acceleration=3;
  }
}
void keyPressed() {
 yposL+=2*acceleration;
 xposL+=2*acceleration;

}