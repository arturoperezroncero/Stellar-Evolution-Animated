void icon(String text, int t, float p1, float p2){
  
  /* 
  0-frag
  1-proto
  2-very red
  3-red
  4-yellow
  5-white
  6-blue
  7-very blue
  8-very very blue
  
  12-wd
  13-ns
  14-bh
  */
  
  pushMatrix();
  translate(p1, p2);
  
  //FRAGMENTATION
  if(t==0){
  amount=5;
  noStroke();
  fill(255,100,100,5);
  for(float i=1; i<wid/10; i+=wid/200){
    ellipse(0,0,wid-i,wid-i);
  }
  fill(255,100,100,5);
  
  //float px[]=new float[amount];
  //float py[]=new float[amount];
  //float sx[]=new float[amount];
  //float sy[]=new float[amount];
  
  //for(int i=0; i<amount; i+=1){
  //  px[i]=wid/5*random(-1,1);
  //  py[i]=wid/5*random(-1,1);
  //  sx[i]=wid/3*random(.3,1.5);
  //  sy[i]=wid/3*random(.3,1.5);
  //}
  
  for(int i=0; i<amount; i+=1){
    for(int o=0; o<10; o+=1){
      ellipse(px[i],py[i],sx[i]-o,sx[i]-o);
    }
  }
  fill(255);
  textFont(SQ);
  text(text,0,height/8);
  }
  
  
  
  //PROTOSTAR
  if(t==1){
  amount=70;
  s=wid;
  w=100;
  a=10;
  noStroke();
  for(int i=0; i<amount; i+=1){
    fill(255,w,w,a);
    ellipse(0,0,s,s);
    s*=0.98;
    if(i>amount/3){
      w+=1.3;
      a*=1.07;
    }
  }
  fill(255);
  textFont(SQ);
  text(text,0,height/8);
  }
  
  

  
  //VERYRED
  if(t==2){
  r=wid/6;
  noStroke();
  for(int o=0; o<10; o+=1){
    fill(200,40,40,70);
    ellipse(0,0,r,r);
    r*=0.9;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/30);
  //shape(c, height/35, height/30);
  }
  
  
  
  
  //RED
  if(t==3){
  r=1.3*wid/6;
  noStroke();
  for(int o=0; o<20; o+=1){
    fill(255,100,50,100);
    ellipse(0,0,r,r);
    r*=0.9;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/25);
  //shape(c, height/35, height/30);
  }
  
  
  
  //YELLOW
  if(t==4){
  r=2*wid/6;
  noStroke();
  for(int o=0; o<20; o+=1){
    fill(255,200,50,100);
    ellipse(0,0,r,r);
    r*=0.96;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/20);
  //shape(c, height/35, height/30);
  }
  
  
  
  
  
  //WHITE
  if(t==5){
  r=2.5*wid/6;
  noStroke();
  for(int o=0; o<25; o+=1){
    fill(255,255,255,100);
    ellipse(0,0,r,r);
    r*=0.97;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/17);
  //shape(c, height/35, height/30);
  }
  
  
  
  
  
  //BLUE
  if(t==6){
  r=3*wid/6;
  noStroke();
  for(int o=0; o<30; o+=1){
    fill(200,200,255,100);
    ellipse(0,0,r,r);
    r*=0.97;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/170);
  //shape(c, height/35, height/30);
  }

  
  
  
  //VERYBLUE
  if(t==7){
  r=0.75*wid;
  noStroke();
  for(int o=0; o<35; o+=1){
    fill(120,120,255,100);
    ellipse(0,0,r,r);
    r*=0.98;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/100);
  //shape(c, height/35, height/30);
  }
  
  

  
  
  //VERYVERYBLUE
  if(t==8){
  r=wid;
  noStroke();
  for(int o=0; o<40; o+=1){
    fill(90,90,255,100);
    ellipse(0,0,r,r);
    r*=0.99;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/100);
  //shape(c, height/35, height/30);
  }
  

  
  
  //WD
  if(t==12){
  r=width/14;
  a=1;
  noStroke();
  for(int o=0; o<50; o+=1){
    fill(255,255,255,a);
    ellipse(0,0,r,r);
    r*=0.95;
    a*=1.1;
  }
  fill(255);
  textFont(sq);
  text(text,0,height/30);
  //shape(c, height/35, height/30);
  }
  
  
  
  //NS
  if(t==13){
  pushMatrix();
  rotate(PI/6);
  r=width/8;
  a=1;
  noStroke();
  for(float o=0; o<height/21.6; o+=1){
    fill(255,255,255,a);
    triangle(0,0,-height/21.6+o,wid/2+o,height/21.6-o,wid/2+o);
    triangle(0,0,-height/21.6+o,-wid/2-o,height/21.6-o,-wid/2-o);
    
    r*=0.95;
    a*=1.1;
  }
  
  r=width*.19;
  a=255;
  for(int o=0; o<75; o+=1){
    strokeWeight(15);
    stroke(0,a);
    noFill();
    ellipse(0,0,r/5,r);
    
    r*=0.99;
    a*=0.8;
  }
  
  
  r=width*.15;
  a=1;
  noStroke();
  for(int o=0; o<100; o+=1){
    fill(255,255,255,a);
    ellipse(0,0,r,r);
    
    r*=0.95;
    a*=1.1;
  }
  popMatrix();
  fill(255);
  textFont(sq);
  text(text,0,height/20);
  //shape(c, height/35, height/30);
  }
  
  
  //NS small
  if(t==15){
  pushMatrix();
  rotate(-PI/6);
  r=width/10;
  a=1;
  noStroke();
  for(float o=0; o<height/21.6; o+=1){
    fill(255,255,255,a);
    triangle(0,0,-height/21.6+o,wid/4+o,height/21.6-o,wid/4+o);
    triangle(0,0,-height/21.6+o,-wid/4-o,height/21.6-o,-wid/4-o);
    
    r*=0.95;
    a*=1.1;
  }
  
  r=width*.15;
  a=255;
  for(int o=0; o<50; o+=1){
    strokeWeight(15);
    stroke(0,a);
    noFill();
    ellipse(0,0,r/7,r);
    
    r*=0.99;
    a*=0.8;
  }
  
  
  r=width*.05;
  a=1;
  noStroke();
  for(int o=0; o<100; o+=1){
    fill(255,255,255,a);
    ellipse(0,0,r,r);
    
    r*=0.95;
    a*=1.1;
  }
  popMatrix();
  fill(255);
  textFont(sq);
  text(text,0,height/20);
  //shape(c, height/35, height/30);
  }
  
  
  
  
  
  //BH
  if(t==14){
  amount=70;
  s=width/12;
  w=70;
  a=15;
  noStroke();
  for(int i=0; i<amount; i+=1){
    fill(4*w,2*w,.5*w,a);
    ellipse(0,0,s,s);
    s*=0.965;
    if(i>3*amount/4){
      w*=0.8;
      a*=1.2;
    }
  }
  fill(255);
  textFont(sq);
  text(text,0,height/30);
  //shape(c, height/35, height/30);
  }
  popMatrix();
}
