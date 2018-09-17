class Planeta{
  float x,y,w,h;
  Body b;
  
  Planeta(float x_, float y_, float w_, float h_){
    x= x_;
    y =y_;
    w = w_;
    h = h_;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    Vec2 posicionTransformada = box2d.coordPixelsToWorld(x,y);
    bd.position.set(posicionTransformada);
    b = box2d.createBody(bd);
    
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    sd.setAsBox(box2dW,box2dH);
    
    b.createFixture(sd,1);
    
    
    
  }
  
  void display(){
    noStroke();
    Vec2 pos = box2d.getBodyPixelCoord(b);  
    ellipseMode(CENTER);
    pushMatrix();
    translate(pos.x,pos.y);
    fill(255,0,0);
    //ellipse(0,0,50,50);
    imageMode(CENTER);
    image(venus,0,0);
    popMatrix();
  } 
  
  void jupiter(){
    imageMode(CENTER);
    jupiter.resize(80,50);
    image(jupiter,x,y);
    
     if( (mouseX> x -40) && (mouseX< x +40) && (mouseY> y -25) && (mouseY< y +25)){
           estrellas.add(new estrella(mouseX,mouseY,5,5));

     }
    
  }
  
  void neptuno(){
    float x= map(sin(orb),-1,1,0, width);
    float y= map(sin(orb+0.5),-1,1,0, height);
    orb=orb+0.006;
 
    imageMode(CENTER);
    neptuno.resize(60,50);
    image(neptuno,x,y);
    
      
    
 if( (mouseX> x -30) && (mouseX< x +30) && (mouseY> y -25) && (mouseY< y +25)){
           estrellas.add(new estrella(mouseX,mouseY,5,5));

     }
  }
  
  void marte(){ 
    imageMode(CENTER);
    marte.resize(60,50);
    image(marte,x,y);
    
    if( (mouseX> x -5) && (mouseX< x +5) && (mouseY> y -5) && (mouseY< y +5)){
           estrellas.add(new estrella(mouseX,mouseY,5,5));
    }
  }
  
  void mercurio(){
    imageMode(CENTER);
    mercurio.resize(60,50);
    image(mercurio,x,y);
    
    if( (mouseX> x -5) && (mouseX< x +5) && (mouseY> y -5) && (mouseY< y +5)){
           estrellas.add(new estrella(mouseX,mouseY,5,5));
    }
  }
  
  void venus(){
    imageMode(CENTER);
    venus.resize(60,50);
    image(venus,x,y);
    
    if( (mouseX> x -5) && (mouseX< x +5) && (mouseY> y -5) && (mouseY< y +5)){
           estrellas.add(new estrella(mouseX,mouseY,5,5));
    }
  }
}