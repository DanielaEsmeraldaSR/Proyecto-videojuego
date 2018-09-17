import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;


Box2DProcessing box2d;

meteoros dos;
estrella una;
Planeta n;
Planeta m;
Planeta mer;
Planeta j;
Planeta v;
float orb;

ArrayList <estrella> estrellas;
ArrayList <meteoros> meteoros;

PImage neptuno;
PImage marte;
PImage mercurio;
PImage jupiter;
PImage venus;
PImage ga;




void setup(){
  size(640,360);
  box2d = new Box2DProcessing(this);
  neptuno=loadImage("neptuno.png");
  marte=loadImage("marte.png");
  mercurio=loadImage("mercurio.png");
  jupiter=loadImage("jupiter.png");
  venus=loadImage("venus.png");
  ga=loadImage("estrellas.jpg");

  
  box2d.createWorld();
  box2d.setGravity(0,-9.8);
  una = new estrella(200,200,5,5);
  estrellas = new ArrayList<estrella>(600);
  meteoros = new ArrayList<meteoros>(400);
  n= new Planeta(100,50,20,20);
  m = new Planeta(180,90,20,20);
  mer= new Planeta(260,120,20,20);
  j = new Planeta(340,180,20,20);
  v= new Planeta(420,240,20,20);
  
 

 

}

void draw(){
  background(0);
  box2d.step();
  image(ga,0,0); 
 
  n.neptuno();
  j.jupiter();
  m.marte();
  mer.mercurio();
  v.venus();
  fill(255);
  text("Presiona el botón derecho del mouse para que caigan estrellas",10,310);
  text("Presiona el botón izquierdo del mouse para que caigan meteoros",10,330);
  text("Pasa el mouse en medio del planeta para que caigan estrellas",10,350);
  
  
  
  //v.display();
  
  
  una.display();
  if(mouseButton==RIGHT){
    
    
    estrellas.add(new estrella(mouseX,mouseY,5,5));
  }
  
  for (estrella e:estrellas){
    e.display();
  }
  una.display();
 
  
 
 
 
  if(mouseButton==LEFT){
    
    
    meteoros.add(new meteoros(mouseX,mouseY,5,5));
  }
  
  for (meteoros r:meteoros){
    r.display();
  }
  

}

 