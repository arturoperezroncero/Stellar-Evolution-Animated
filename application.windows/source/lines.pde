void lines(float x1, float y1, float x2, float y2){
  float gro=10;
  PVector m1 = new PVector(x2-x1,y2-y1);
  m1.setMag(height/200);
  PVector m2 = new PVector(-m1.y,m1.x);
  strokeCap(ROUND);
  for(int i=0; i<gro; i++){
    stroke(255,map(i,5,gro,150,0));
    strokeWeight(map(i,0,gro,0,gro));
    line(x1,y1,x2,y2);
    noFill();
    triangle(x2+2*m1.x, y2+2*m1.y, x2+m2.x, y2+m2.y, x2-m2.x, y2-m2.y);
  }
}

void shape1(float x1, float y1, float x2, float y2,
float x3, float y3, float x4, float y4, float x5, float y5, 
float x6, float y6){
  float gro=15;
  noFill();
  strokeCap(ROUND);
  for(int i=0; i<gro; i++){
    stroke(255,map(i,0,gro,150,0));
    strokeWeight(map(i,0,gro,10,gro));
    beginShape();
    vertex(x1, y1);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4);
    vertex(x5, y5);
    vertex(x6, y6);
    endShape();
  }
}

void shape2(float x1, float y1, float x2, float y2,
float x3, float y3, float x4, float y4){
  float gro=15;
  noFill();
  strokeCap(ROUND);
  for(int i=0; i<gro; i++){
    stroke(255,map(i,0,gro,150,0));
    strokeWeight(map(i,0,gro,10,gro));
    beginShape();
    vertex(x1, y1);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4);
    endShape();
  }
}



void ending(){
  noStroke();
  fill(0,ending*4);
  rect(-width/2,-height/2,width,height);
  ending+=1;
  if(ending>=255/4){
    end=true;
  }
}

void rectan(String tex, float t1, float t2){
  pushStyle();
  fill(0);
  stroke(255);
  strokeWeight(4);
  rectMode(CENTER);
  textAlign(CENTER);
  rect(0,2*height/5,width/2,height/14);
  popStyle();
  
  textFont(SQ);
  fill(255);
  fade(tex,t1,t2);
}

void fade(String text, float t1, float t2){
  textFont(SQ);
  if(t<t1+(t2-t1)/3){
    fill(255,map(t,t1,t1+(t2-t1)/3,0,255));
  }if(t>=t1+(t2-t1)/3 && t<=t1+2*(t2-t1)/3){
    fill(255);
  }if(t>t1+2*(t2-t1)/3){
    fill(255,map(t,t1+2*(t2-t1)/3,t2,255,0));
  }
  
  text(text,0,2*height/5);
}

void shed(){
  fill(255,80,80,20);
  noStroke();
  shed=constrain(shed,0,height*2);
  for(float i =0; i<10; i++){
    ellipse(0,0,shed+i*height/15,shed+i*height/15);
  }
  shed*=1.1;
}

void shed2(color c){
  stroke(c,alph);
  noFill();
  strokeWeight(height/10);
  shed2=constrain(shed2,0,height*2);
  for(float i =0; i<3; i+=0.3){
    ellipse(0,0,shed2+i*height/10,shed2+i*height/10);
  }
  shed2*=1.08;
  println(shed2);
  if(shed2>height/3){
    alph*=0.9;
  }
}
