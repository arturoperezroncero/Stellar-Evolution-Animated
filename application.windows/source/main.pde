float wid;
int amount=10;
float s,w,a,r,page,c,ending,alpha,alph,tam,shed,shed2;
boolean once,end;
PShape C1,C2,C;
PFont SQ,sq;


//frag
int base=80;
int onion=2;
int vel=100;

float t=1;
float[] x = new float[amount];
float[] y = new float[amount];

float px[]=new float[amount];
float py[]=new float[amount];
float sx[]=new float[amount];
float sy[]=new float[amount];


//proto
int rain=5;
int size_rain=10;
float size_core=0;
float col_core=.1;
float vel_end=.1;

//pre_baja, baja e inter
float c1,c2,c3;
float s1,s2,s3,s4;
float th,sp,max,r1,r2,rep;
float endo=30;
float sped=25;
int rad=1;

//animations
Star star1;
int am=10;
int mx;
float[] sizes = new float[am];
float[] diff = new float[am];
int[] mod = new int[am];
int[] curve = new int[am];
color[] colors = new color[am];
float[] speeds = new float[am];
String[] texts = new String[am];
float[] Ra = new float[am];
float[] Rb = new float[am];
boolean[] fadeIN = new boolean[am];
boolean[] fadeOUT = new boolean[am];
int index;

void setup(){
  fullScreen();
  //size(100,100);
  background(0,0); 
  SQ = createFont("SpaceQuest.ttf", height/40);
  sq = createFont("SpaceQuest.ttf", height/60);
  textFont(SQ);
  textFont(sq);
  textAlign(CENTER);
  frameRate(60);
  wid=height/5;
  star1 = new Star();
  
  C = createShape(GROUP);
  C1 = createShape(ELLIPSE, height/35, 0, height/100, height/100);
  C1.setFill(false);
  C1.setStroke(color(255));
  C2 = createShape(ELLIPSE, height/35, 0, height/500, height/500);
  C2.setFill(color(255));
  C2.setStroke(false);
  
  C.addChild(C1);
  C.addChild(C2);
  
  
  
  //frag
  for(int i=0; i<x.length; i++){
    x[i]=random(-width/3, width/3);
    y[i]=random(-height/3, height/3);
  }
  
  for(int i=0; i<amount; i+=1){
    px[i]=wid/5*random(-1,1);
    py[i]=wid/5*random(-1,1);
    sx[i]=wid/3*random(.3,1.5);
    sy[i]=wid/3*random(.3,1.5);
  }
}

void draw(){
  translate(width/2, height/2);
  
  if(page==0){
    if(once==false){
      once=true;
        index();
    }
    if(mousePressed==true){
      press();
    }
  }
  
  if(page==1){
    frag();
  }
  
  if(page==2){
    proto();
  }
  
  if(page==3){
    background(0);
    pre_muybaja();
  }
  
  if(page==4){
    background(0);
    pre_baja();
  }
  
  if(page==5){
    background(0);
    inter();
  }
  
  if(page==6){
    he_wd();
    //prueba(conveccion/radiacion, fade in, fade out, initial radius1, final radius1, initial radius2, final radius2, speed, index, max index)
  }
  
  if(page==7){
    rgb1();
  }
  
  if(page==8){
    rgb2();
  }
  
  if(page==9){
    agb1();
  }
  
  if(page==10){
    agb2();
  }
  
  if(page==11){
    agb3();
  }
  
  if(page==12){
    sm1();
  }
  
  if(page==13){
    sm2();
  }
  
  
  
  
  
  
  if(page==100){
    brown();
  }
  if(page==101){
    sup_blue();
  }
  
  if(end==true){
    page=0;
    once=false;
    end=false; 
  }
  
  
  
  
  //if(millis()>10000){
  //  saveFrame();
  //}
  
  //text("M",600,500);
  //shape(c, 600, 500);
}


void mouseReleased(){
  /*
  1-frag
  2-proto
  
  3-pre-muybaja
  4-pre-baja
  5-pre-inter
  
  6-red dwarf to He-WD
  7-0.4-1M to RGB
  8-1-12M to RGB
  9-AGB He-flash
  10-AGB no He-flash, no C fusion
  11-C fusion
  */
  
  
  
  float rx=mouseX-width/2;
  float ry=mouseY-height/2;
  if(page==0){
    t=1;
    ending=0;
    once=false;
    shed=1;
  }
  
  if(rx>-3*width/7-width/20 && rx<-3*width/7+width/20 && ry>height/6-width/20 && ry<height/6+width/20 && page==0){
    page=1;
  }
  if(rx>-3*width/7-width/20 && rx<-3*width/7+width/20 && ry>-height/6-width/20 && ry<-height/6+width/20 && page==0){
    background(60,20,20);
    page=2;
  }
  if(rx>-2*width/7-width/20 && rx<-2*width/7+width/20 && ry>-height/6-width/20 && ry<-height/6+width/20 && page==0){
    page=3;
  }
  if(rx>-2*width/7-width/20 && rx<-2*width/7+width/20 && ry>-width/20 && ry<width/20 && page==0){
    page=4;
  }
  if(rx>-2*width/7-width/20 && rx<-2*width/7+width/20 && ry>height/6-width/20 && ry<height/6+width/20 && page==0){
    page=5;
  }
  if(rx>-width/20 && rx<width/20 && ry>-2*height/6-width/20 && ry<-2*height/6+width/20 && page==0){
    index=0;
    page=6;
  }
  if(rx>-width/7-width/20 && rx<-width/7+width/20 && ry>-height/6-width/20 && ry<-height/6+width/20 && page==0){
    index=0;
    page=7;
  }
  if(rx>-width/7-width/20 && rx<-width/7+width/20 && ry>-width/20 && ry<width/20 && page==0){
    index=0;
    page=8;
  }
  if(rx>-width/20 && rx<width/20 && ry>-height/6-width/20 && ry<-height/6+width/20 && page==0){
    index=0;
    page=9;
  }
  if(rx>width/7-width/20 && rx<width/7+width/20 && ry>-width/20 && ry<width/20 && page==0){
    index=0;
    page=10;
  }
  if(rx>width/7-width/20 && rx<width/7+width/20 && ry>height/6-width/20 && ry<height/6+width/20 && page==0){
    index=0;
    page=11;
  }
  if(rx>-width/20 && rx<width/20 && ry>height/6-width/20 && ry<height/6+width/20 && page==0){
    index=0;
    page=12;
  }
  if(rx>-width/20 && rx<width/20 && ry>2.2*height/6-width/20 && ry<2.2*height/6+width/20 && page==0){
    index=0;
    alph=100;
    page=13;
    shed2=1;
  }
  
  
  
  
  if(rx>-2*width/7-width/20 && rx<-2*width/7+width/20 && ry>-2*height/6-width/20 && ry<-2*height/6+width/20 && page==0){
    page=100;
  }
  if(rx>-2*width/7-width/20 && rx<-2*width/7+width/20 && ry>2*height/6-width/20 && ry<2*height/6+width/20 && page==0){
    page=101;
  }
}
