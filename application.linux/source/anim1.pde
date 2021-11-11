void frag(){
  background(100,60,60);

  if(t*vel<width*3){
  noFill();
  stroke(120,60,60,255);
  strokeWeight(50);
  ellipse(-250,-250,t*vel+250,t*vel+250);
  
  stroke(130,60,60,255);
  strokeWeight(30);
  ellipse(-250,-250,t*vel+250,t*vel+250);
  
  stroke(140,60,60,255);
  strokeWeight(10);
  ellipse(-250,-250,t*vel+250,t*vel+250);
  }else{
    for(int i=0; i<x.length; i++){
    noStroke();
    for(int o=0; o<onion; o++){
      fill(100+t*.1,60+t*.03,60+t*.03,map(i,0,x.length,0,255)-o*20);
      ellipse(x[i],y[i],o*25+i*10000/t,o*25+i*10000/t);
    }
    }
  }
  
  fade("The gas cloud contracts, decreasing its Jeans mass, and prompting the contraction of smaller clouds inside it.",0,800);
  
  t+=1;
  
  if(t>800){
  ending();
}
}




void proto(){
  if(t<35){
    //isothermal collapse
    
    noStroke();
    fill(60+t*10,20,20,100);
    ellipse(0,0,10*height/t,10*height/t);
  
    fill(255,20+col_core,20+col_core,100);
    size_core=log(t)*100;
    ellipse(0,0,size_core,size_core);
    
    s=size_core;
    c=20+col_core;
    
    rectan("Isothermal collapse",0,35);
  
  }if(t>35 && t<120){
    //opaque core, non-homologous collapse around homogenous core
    
    fill(255,c,c,100);
    size_core*=(t)/(t+.15);
    c+=size_core*.001;
    ellipse(0,0,size_core,size_core);
    
    rectan("Non-homologous collapse around homogenous core",35,120);
  }if(t>120 && t<125){
    //central core in hydrostatic equilibrium surrounded by a still-falling envelope, supersonic rain causes first shock front
    
    fill(255,c,c,100);
    size_core*=(t)/(t+.15);
    c+=size_core*.002;
    
    //stroke(255,180,180,random(0,10));
    //strokeWeight(random(0,15));
    stroke(255,10);
    ellipse(0,0,size_core,size_core);
    
    rectan("First shock front",120,125);
  }if(t>125 && t<135){
    //stable core
    rectan("Stable core",125,135);
  }if(t>135 && t<180){
    //disassociation begins, second collapse
    
    fill(255,c,c,100);
    size_core*=(t)/(t+.3);
    c+=size_core*.001;
    
    noStroke();
    ellipse(0,0,size_core,size_core);
    
    rectan("Disassociation begins, second collapse",135,180);
  }if(t>180){
    //inner core of atomic hydrogen, collapse stops, PROTOSTAR
    
    fill(255,4);
    ellipse(0,0,size_core,size_core);
    
    
    if(t>190){
        fill(255,255-(1.9*t-200));
        ellipse(0,0,size_core+3*(t-220),size_core+3*(t-220));
      }
    
    if(t>210){
      //if(2*width-vel_end*(t-210)>150 && t<220){
      //  noStroke();
      //  fill(0,3);
      //  ellipse(0,0,2*width-vel_end*(t-210),2*width-vel_end*(t-210));
      //}
    }
    
    rectan("Collapse stops, protostar is formed",180,220);
  }
  
  t+=.2;
  
  
  if(t>220){
  ending();
}
}











void pre_muybaja(){
  if(t>0){
    //contraction
    //cambiar +-i para definicion de borde
    for(int i=0; i<=endo; i+=5){
      s1=(height/3-i+30)/((t+10)/(t+15));
      noStroke();
      fill(9*i,i,i);
      ellipse(0,0,s1,s1);
    }
    
    if(t>25){
      //convective max=numero puntos
      // r1 radio, r2 radio bucles, rep numero de bucles
      strokeWeight(15);
      stroke(240,20,20,(t-25));
      max=100;
      r1=s1/4;
      r2=height/25;
      rep=7;
      
      for(int i=0; i<max; i++){
        float j;
        j=i*2*PI/max;
        point(r1*sin(j)+r2*sin(rep*j+t/20), r1*cos(j)+r2*cos(rep*j+t/20));
      }
      
      //beginShape();
      //for(int i=0; i<=max; i++){
      //  x=i*2*PI/max;
      //  vertex(r1*sin(x)+r2*sin(rep*x+t/20), r1*cos(x)+r2*cos(rep*x+t/20));
      //}
      //endShape();
      
      
      
      
      
      //radiative
      
      //s2=s1-50;
      //th=15;
        //for(float i=0; i<s2; i+=th){
        //noFill();
        //stroke(255,(1-(i/s2))*50*abs(sin(2*PI*i/s2-t/10)));
        //println(i);
        //strokeWeight(th);
        //ellipse(0,0,i,i);
           
      
      
      //spin
      
      //float c2=100/(t+100);
      //stroke(9*end/c2,end/c2,end/c2);
      //strokeWeight(10);
      //noFill();
      //ellipse(0,0,height/8,height/8);
      
      //pushMatrix();
      //rotate(t/100);
      
      //fill(9*end,end,end);
      //noStroke();
      //rectMode(CENTER);
      //rect(0,0,height/4,height/40);
      //rect(0,0,height/40,height/4);
      
      
      
      
      
      
      
      //espiral
      //strokeWeight(10);
      //stroke(255,50);
      //int max=150;
      //beginShape();
      //for(int i=0; i<max; i++){
      //  vertex(i*sin(i*10*PI/max-t/10),i*cos(i*10*PI/max-t/10));
      //}
      //endShape();
    }
  }
  
if(t<100){
  fade("Contraction",0,100);
}else{
  fade("Convective core",100,400);
}
  
t+=.5;

if(t>400){
  ending();
}
}










void pre_baja(){
  c1=constrain(8*endo,0,255);
  c2=constrain(5*map(t,0,400,0,1)*endo,0,170);
  c3=constrain(map(t,0,400,0,1)*endo,0,100);
  
  if(t>0){
    //contraction
    noStroke();
    for(int i=0; i<=endo; i+=15){
      s1=(2*height/5-i+30)/((t+10)/(t+15));
      fill(c1*i/endo,c2*i/endo,c3*i/endo);
      ellipse(0,0,s1,s1);
    }
    
    if(t>75){
      //first instances of cno, convective core, hayashi line
      strokeWeight(15);
      stroke(c1+20,c2+20,c3+20,constrain((t-75),0,150));
      max=100;
      if(t<200){
        r1=s1/4;
        r2=height/25;
      }else{
        r1*=.0045*exp(-.0005*(pow(t-200,2)))+1;
        r2/=.002*exp(-.0005*(pow(t-200,2)))+1;
      }
      rep=7;
      
      for(int i=0; i<max; i++){
        float j;
        j=i*2*PI/max;
        point(r1*sin(j)+r2*sin(rep*j+t/20), r1*cos(j)+r2*cos(rep*j+t/20));
      }
    }
      
      
      if(t>250){
        //first instances pp, radiative core, henyey track
        s2=s1-100;
        th=15;
        
        for(float i=0; i<s2; i+=th){
          noFill();
          stroke(c1+20,c2+20,c3+20,(1-(i/s2))*150*abs(sin(2*PI*i/s2-t/10))*constrain(map(t,250,300,0,1),0,1));
          strokeWeight(th);
          ellipse(0,0,i,i);
        }
  }
  t+=.5;
}

if(t<125){
  fade("Contraction",0,125);
}if(t>125 && t<250){
  fade("Convective core",125,250);
}if(t>250){
  fade("Radiative core",250,500);
}

if(t>500){
    ending();
  }
}







void inter(){
  c1=constrain(7*endo*map(t,0,400,.9,1),0,200);
  c2=constrain(6*endo*map(t,0,400,.6,1),0,200);
  c3=constrain(5*endo*map(t,0,400,.5,1),0,255);
  
  
  if(t>0){
    //contraction
    noStroke();
    for(int i=0; i<=endo; i+=15){
      s1=(height/2-i+30)/((t+10)/(t+15));
      fill(c1*i/endo,c2*i/endo,c3*i/endo);
      ellipse(0,0,s1,s1);
    }
    
    if(t>100){
      //first instances of cno, convective core, hayashi line
      
      stroke(c1+20,c2+20,c3+20,constrain((t-75),0,150));
      max=100;
      if(t<200){
        strokeWeight(15);
        r1=s1/4;
        r2=height/25;
      }if(t>200 && t<400){
        r1*=.0045*exp(-.0005*(pow(t-200,2)))+1;
        r2/=.002*exp(-.0005*(pow(t-200,2)))+1;
      }if(t>400 && t<425){
        stroke(c1+20,c2+20,c3+20,map(t,400,425,150,0));
      }if(t>425){
        strokeWeight(10);
        stroke(c1+20,c2+20,c3+20,map(t,425,450,0,150));
        r1=s1/8;
        r2=height/35;
      }
      rep=7;
      
      for(int i=0; i<max; i++){
        float j;
        j=i*2*PI/max;
        point(r1*sin(j)+r2*sin(rep*j+t/20), r1*cos(j)+r2*cos(rep*j+t/20));
      }
    }
      
      
      if(t>250){
        //first instances pp, radiative core, henyey track
        if(t<400){
          s2=s1/2;
          s4=0;
        }else{
          s2=s1-constrain(map(t,400,425,s1/2,0),0,s1/2);
          s4=constrain(map(t,400,425,0,s1/2),0,s1/2);
          rad=2;
        }
        
        th=15;
        
        for(float i=s4; i<s2; i+=th){
          noFill();
          stroke(c1+20,c2+20,c3+20,(1-(i/s2))*200*abs(sin(rad*2*PI*i/s2-t/10))*constrain(map(t,250,300,0,1),0,1));
          strokeWeight(th);
          ellipse(0,0,i,i);
        }
  }
  
  t+=.5;
}

if(t<125){
  fade("Contraction",0,125);
}if(t>125 && t<250){
  fade("Convective core",125,250);
}if(t>250){
  fade("Radiative core",250,500);
}

//println(t);
if(t>600){
    ending();
  }
}


void brown(){
  background(0);
  
  noStroke();
  fill(200,100,50,50);
  for(float i=0; i<20; i++){
    ellipse(0,0,height/3+i*height/200,height/3+i*height/200);
  }
  
  textFont(SQ);
  fill(255);
  text("Stars with masses below 0.08 solar masses will never fuse H into He, never reaching the MS.",0,2*height/5);
  
  if(t>200){
    ending();
  }
  
  t+=1;
}


void sup_blue(){
  background(0);
  
  noStroke();
  fill(100,100,255,50);
  for(float i=0; i<20; i++){
    ellipse(0,0,height/2+i*height/150,height/2+i*height/150);
  }
  
  textFont(SQ);
  fill(255);
  text("Stars with masses over 12 solar masses skip the pre-MS, and are born already in the MS.",0,2*height/5);
  
  if(t>200){
    ending();
  }
  
  t+=1;
}
