class Star {
  float size;
  float t,ta;
  float speed;
  float alpha;
  float alphaT=1;
  boolean check;
  float indece;
  color c;

  Star() {
    
  }
  
  void sized(float first, float last, color c1, color c2, float speed, int ind, int marx, float dif, int cur){
    if(cur==0){
      first=lerp(first,last,speed);
      c1=lerpColor(c1,c2,speed);
      
      noStroke();
      fill(c1,150);
      for(float i=0; i<height/20; i+=height/80){
        ellipse(0,0,first+i,first+i);
      }
    
      sizes[ind]=first;
      colors[ind]=c1;
      tam=first;
    }
    
    if(cur==1){
      size=lerp(first,last,speed*t);
      c=lerpColor(c1,c2,speed*t);
      
      size=constrain(size,0,height);
      
      noStroke();
      fill(c,150);
      for(float i=0; i<height/20; i+=height/80){
        ellipse(0,0,size+i,size+i);
      }
      tam=size;
      t+=1;
    }
    
    
    
    //noStroke();
    //fill(c1);
    //ellipse(0,0,first,first);
    //for(float i=0; i<first/10; i+=first/40){
    //  strokeWeight(i);
    //  noFill();
    //  stroke(c1,150);
    //  ellipse(0,0,first,first);
    //}
    
    
    
    fill(255,alphaT);
    textFont(SQ);
    text(texts[ind],0,2*height/5);
    
    if(cur==0){
      if(first/last>0.96+dif && first/last<1.04-dif){
        alphaT*=0.9;
      }else{
        alphaT*=1.1;
      }if(alphaT<1){
        alphaT=1;
      }
      
      if(first/last>0.99+dif/20 && first/last<1.01-dif/20){
        if(ind>=marx-1){
          ending();
        }else{
          index++;
        }
      }
    }
    
    if(cur==1){
      if(speed*t>0.9){
        alphaT*=0.9;
      }else{
        alphaT*=1.1;
      }if(alphaT<1){
        alphaT=1;
      }
      
      if(speed*t>0.99){
        if(ind>=marx-1){
          ending();
        }else{
          index++;
          t=0;
        }
      }
    }
    
  }
  
  void transport(int mode, boolean in, boolean out, float a1, float A1, float a2, float A2, float speed, int ind, float dif){
    ta+=1;
    a1=lerp(a1,A1,speed*t*0.033);
    a2=lerp(a2,A2,speed*t*0.033);
    
    
    if(in==true && check==false){
      if(alpha>250){
        check=true;
      }
      alpha=lerp(alpha,255,speed*2);
    }if(out==true && speed*t*2>0.95){
      alpha=lerp(alpha,0,speed*2);
      
    }
    
    if(indece!=ind){
      check=false;
    }
    indece=ind;
    
    if(mode==0){
      float rep=7;
      float max=100;
      float x;
    
      stroke(255,alpha);
      strokeWeight(10);
      
      for(int i=0; i<max; i++){
        x=i*2*PI/max;
        point(a1*sin(x)+a2*sin(rep*x+ta/20), a1*cos(x)+a2*cos(rep*x+ta/20));
      }
    }if(mode==1){
      
      float th=3;
      int rad=2;
        
      for(float i=a1; i<a2; i+=th){
        noFill();
        strokeWeight(th);
        stroke(255,(1-(i/a2))*200*abs(sin(rad*2*PI*i/a2-ta/10))*alpha/255);
        ellipse(0,0,i,i);
      }
    }
    
    Ra[ind]=a1;
    Rb[ind]=a2;
  }
}



//mx=2;
      
//star1 = new Star();
//sizes[0]=300;
//sizes[1]=500;
//sizes[2]=100;

//colors[0]=color(255,0,0);
//colors[1]=color(0,255,0);
//colors[2]=color(0,0,255);

//Ra[0]=sizes[0]*.0;
//Ra[1]=sizes[1]*.0;
//Ra[2]=sizes[2]*.0;

//Rb[0]=sizes[0]*.5;
//Rb[1]=sizes[1]*.5;
//Rb[2]=sizes[2]*.5;

//fadeIN[0]=true;
//fadeIN[1]=true;
//fadeIN[2]=true;

//fadeOUT[0]=true;
//fadeOUT[1]=true;
//fadeOUT[2]=true;

//texts[0]="lol";
//texts[1]="lolo";

//speeds[0]=0.01;
//speeds[1]=0.03;
//}
//star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx);
//star1.transport(1,true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index);
////prueba(conveccion/radiacion, fade in, fade out, initial radius1, final radius1, initial radius2, final radius2, speed, index, max index)
