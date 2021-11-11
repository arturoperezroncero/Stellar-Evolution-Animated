void he_wd(){
  background(0);
    if(once==false){
      once=true;
      
      mx=4;
      
      star1 = new Star();
      sizes[0]=height/3;
      sizes[1]=height/4;
      sizes[2]=height/5;
      sizes[3]=height/6;
      sizes[4]=height/7;
      
      colors[0]=color(255,50,50);
      colors[1]=color(255,75,75);
      colors[2]=color(50,50,255);
      colors[3]=color(255,255,255);
      colors[4]=color(0,0,0);
      
      Ra[0]=sizes[0]*.0;
      Ra[1]=sizes[1]*.0;
      Ra[2]=sizes[2]*.0;
      
      Rb[0]=sizes[0]*.0;
      Rb[1]=sizes[1]*.0;
      Rb[2]=sizes[2]*.0;
      
      fadeIN[0]=false;
      fadeIN[1]=false;
      fadeIN[2]=false;
      
      fadeOUT[0]=false;
      fadeOUT[1]=false;
      fadeOUT[2]=false;
      
      texts[0]="H turns into He, red dwarf";
      texts[1]="Blue dwarf";
      texts[2]="CO-White dwarf";
      texts[3]="Black dwarf?";
      
      speeds[0]=0.02;
      speeds[1]=0.02;
      speeds[2]=0.02;
      speeds[3]=0.02;
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,1,1);
    star1.transport(1,true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}

void rgb1(){
  background(0);
    if(once==false){
      once=true;
      
      mx=4;
      
      star1 = new Star();
      sizes[0]=height/4.1;
      sizes[1]=height/4;
      sizes[2]=height/2;
      sizes[3]=height/1.5;
      sizes[4]=height/1.2;
      
      diff[0]=0.03;
      diff[1]=0;
      diff[2]=0.035;
      diff[3]=0.03;
      diff[4]=0.03;
      
      colors[0]=color(255,200,100);
      colors[1]=color(255,200,100);
      colors[2]=color(255,50,50);
      colors[3]=color(255,40,40);
      colors[4]=color(255,30,30);
      
      Ra[0]=sizes[0]*.0;
      Ra[1]=sizes[1]*.00;
      Ra[2]=sizes[2]*.3;
      Ra[3]=sizes[3]*.3;
      Ra[4]=sizes[4]*.3;
      
      Rb[0]=sizes[0]*.8;
      Rb[1]=sizes[1]*.00;
      Rb[2]=sizes[2]*.1;
      Rb[3]=sizes[3]*.1;
      Rb[4]=sizes[4]*.1;
      
      mod[0]=1;
      mod[1]=2;
      mod[2]=0;
      mod[3]=0;
      
      curve[0]=0;
      curve[1]=1;
      curve[2]=1;
      curve[3]=1;
      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      texts[0]="The core depletes its H";
      texts[1]="H shell-burning begins. Slow expansion.";
      texts[2]="Degenerate core forms. Convective outer layers.";
      texts[3]="Red Giant Branch";
      
      speeds[0]=0.006;
      speeds[1]=0.005;
      speeds[2]=0.005;
      speeds[3]=0.005;
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],curve[index]);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}


void rgb2(){
  background(0);
    if(once==false){
      once=true;
      
      mx=4;
      
      star1 = new Star();
      sizes[0]=height/3;
      sizes[1]=height/4;
      sizes[2]=height/2;
      sizes[3]=height/1.5;
      sizes[4]=height/1.2;
      
      diff[0]=0;
      diff[1]=0;
      diff[2]=0;
      diff[3]=0;
      diff[4]=0;
      
      colors[0]=color(200,200,255);
      colors[1]=color(255,255,255);
      colors[2]=color(255,200,50);
      colors[3]=color(255,100,40);
      colors[4]=color(255,50,30);
      
      Ra[0]=sizes[0]*.0;
      Ra[1]=sizes[1]*.00;
      Ra[2]=sizes[2]*.3;
      Ra[3]=sizes[3]*.3;
      Ra[4]=sizes[4]*.3;
      
      Rb[0]=sizes[0]*.8;
      Rb[1]=sizes[1]*.00;
      Rb[2]=sizes[2]*.1;
      Rb[3]=sizes[3]*.1;
      Rb[4]=sizes[4]*.1;
      
      mod[0]=1;
      mod[1]=2;
      mod[2]=0;
      mod[3]=0;
      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      texts[0]="The core depletes its H. Contraction begins (hook).";
      texts[1]="H shell-burning begins. Quick expansion (Hertzsprung Gap).";
      texts[2]="Convective outer layers.";
      texts[3]="Red Giant Branch";
      
      speeds[0]=0.01;
      speeds[1]=0.01;
      speeds[2]=0.01;
      speeds[3]=0.01;
      
      curve[0]=1;
      curve[1]=1;
      curve[2]=1;
      curve[3]=1;
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],1);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}


void agb1(){
  background(0);
    if(once==false){
      once=true;
      
      mx=9;
      
      star1 = new Star();
      sizes[0]=height/2.5;
      sizes[1]=height/2.2;
      sizes[2]=height/1.9;
      sizes[3]=height/1.6;
      sizes[4]=height/1.3;
      sizes[5]=height/2.25;
      sizes[6]=height/2;
      sizes[7]=height/1.8;
      sizes[8]=height/2.5;
      sizes[9]=height/6;
      
      curve[0]=1;
      curve[1]=0;
      curve[2]=1;
      curve[3]=1;
      curve[4]=1;
      curve[5]=0;
      curve[6]=0;
      
      diff[0]=0;
      diff[1]=0;
      diff[2]=0;
      diff[3]=0;
      diff[4]=0;
      diff[5]=0;
      diff[6]=0;
      
      colors[0]=color(255,200,100);
      colors[1]=color(255,150,80);
      colors[2]=color(255,100,50);
      colors[3]=color(255,255,255);
      colors[4]=color(255,50,50);
      colors[5]=color(255,200,150);
      colors[6]=color(255,150,100);
      colors[7]=color(255,50,50);
      colors[8]=color(255,200,50);
      colors[9]=color(255,255,255);
      
      Ra[0]=sizes[0]*.0;
      Ra[1]=sizes[1]*.0;
      Ra[2]=sizes[2]*.0;
      Ra[3]=sizes[3]*.0;
      Ra[4]=sizes[4]*.1;
      Ra[5]=sizes[5]*.3;
      Ra[6]=sizes[6]*.33;
      Ra[7]=sizes[7]*.36;
      Ra[8]=sizes[8]*.0;
      
      Rb[0]=sizes[0]*.1;
      Rb[1]=sizes[1]*.2;
      Rb[2]=sizes[2]*.4;
      Rb[3]=sizes[3]*.0;
      Rb[4]=sizes[4]*.05;
      Rb[5]=sizes[5]*.1;
      Rb[6]=sizes[6]*.1;
      Rb[7]=sizes[7]*.1;
      Rb[8]=sizes[8]*.0;
      
      mod[0]=1;
      mod[1]=1;
      mod[2]=2;
      mod[3]=0;
      mod[4]=0;
      mod[5]=0;
      mod[6]=0;
      mod[7]=0;
      mod[8]=2;
      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      
      texts[0]="RGB, shell burning feeds a growing He core.";
      texts[1]="Chemical discontinuity is reached (Thomas peak).";
      texts[2]="HELIUM FLASH";
      texts[3]="Helium flash. The increase in energy production prompts an expansion which removes degeneracy. Steady He burning starts in the core.";
      texts[4]="The star travels through the Horizontal Branch. Growing convective core rich in C and O develops, fed by H shell bunring.";
      texts[5]="An inert CO core begins to form below the He burning shells. H burning stops due to the expansion. E-AGB.";
      texts[6]="H burning reignited. Unstable He shell burning. TP-AGB.";
      texts[7]="Fuel finally runs out, contraction begins.";
      texts[8]="The star sheds its outer layers, leaving a CO-WD behind.";
      
      speeds[0]=0.003;
      speeds[1]=0.003;
      speeds[2]=0.05;
      speeds[3]=0.003;
      speeds[4]=0.003;
      speeds[5]=0.003;
      speeds[6]=0.003;
      speeds[7]=0.003;
      speeds[8]=0.03;
      speeds[9]=0.03;
    }
    if(index>7){
      shed();
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],1);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}



void agb2(){
  background(0);
    if(once==false){
      once=true;
      
      mx=6;
      
      star1 = new Star();
      sizes[0]=height/2;
      sizes[1]=height/1.8;
      sizes[2]=height/3;
      sizes[3]=height/2.25;
      sizes[4]=height/1.5;
      sizes[5]=height/2.5;
      sizes[6]=height/6;
      
      curve[0]=1;
      curve[1]=0;
      curve[2]=1;
      curve[3]=1;
      curve[4]=1;
      curve[5]=0;
      curve[6]=0;
      
      diff[0]=0;
      diff[1]=0;
      diff[2]=0;
      diff[3]=0;
      diff[4]=0;
      diff[5]=0;
      diff[6]=0;
      
      colors[0]=color(255,70,70);
      colors[1]=color(255,50,50);
      colors[2]=color(200,200,255);
      colors[3]=color(255,100,100);
      colors[4]=color(255,50,50);
      colors[5]=color(255,200,80);
      colors[6]=color(255,255,255);
      
      Ra[0]=sizes[0]*.0;
      Ra[1]=sizes[1]*.0;
      Ra[2]=sizes[2]*.1;
      Ra[3]=sizes[3]*.3;
      Ra[4]=sizes[4]*.35;
      Ra[5]=sizes[5]*.0;
      Ra[6]=sizes[6]*.0;
      
      Rb[0]=sizes[0]*.1;
      Rb[1]=sizes[1]*.4;
      Rb[2]=sizes[2]*.05;
      Rb[3]=sizes[3]*.1;
      Rb[4]=sizes[4]*.1;
      Rb[5]=sizes[5]*.0;
      Rb[6]=sizes[6]*.0;
      
      mod[0]=1;
      mod[1]=0;
      mod[2]=0;
      mod[3]=0;
      mod[4]=0;
      mod[5]=2;
      mod[6]=2;
      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      texts[0]="RGB, shell burning feeds a growing He core.";
      texts[1]="Increasing core mass prompts He burning, creating a convective core. Blue loop.";
      texts[2]="An inert CO core begins to form below the He burning shells. H burning stops due to the expansion. E-AGB.";
      texts[3]="H burning reignited. Unstable He shell burning. TP-AGB.";
      texts[4]="Fuel finally runs out, contraction begins.";
      texts[5]="The star sheds its outer layers (post-AGB), leaving a CO-WD behind.";
      
      speeds[0]=0.003;
      speeds[1]=0.003;
      speeds[2]=0.003;
      speeds[3]=0.003;
      speeds[4]=0.003;
      speeds[5]=0.03;
    }
    if(index>4){
      shed();
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],1);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}


void agb3(){
  background(0);
    if(once==false){
      once=true;
      
      mx=8;
      
      star1 = new Star();
      sizes[0]=height/2;
      sizes[1]=height/1.8;
      sizes[2]=height/3;
      sizes[3]=height/2.25;
      sizes[4]=height/1.5;
      sizes[5]=height/1.3;
      sizes[6]=height/1.2;
      sizes[7]=height/1.1;
      sizes[8]=height/6;
      
      curve[0]=1;
      curve[1]=0;
      curve[2]=1;
      curve[3]=1;
      curve[4]=1;
      curve[5]=0;
      curve[6]=0;
      
      diff[0]=0;
      diff[1]=0;
      diff[2]=0;
      diff[3]=0;
      diff[4]=0;
      diff[5]=0;
      diff[6]=0;
      
      colors[0]=color(255,70,70);
      colors[1]=color(255,50,50);
      colors[2]=color(200,200,255);
      colors[3]=color(255,100,100);
      colors[4]=color(255,80,70);
      colors[5]=color(255,255,255);
      colors[6]=color(255,50,50);
      colors[7]=color(255,40,40);
      colors[8]=color(255,255,255);
      
      Ra[0]=sizes[0]*.0;
      Ra[1]=sizes[1]*.0;
      Ra[2]=sizes[2]*.1;
      Ra[3]=sizes[3]*.3;
      Ra[4]=sizes[4]*.35;
      Ra[5]=sizes[5]*.35;
      Ra[6]=sizes[6]*.35;
      Ra[7]=sizes[7]*.0;
      Ra[8]=sizes[8]*.0;
      
      Rb[0]=sizes[0]*.1;
      Rb[1]=sizes[1]*.4;
      Rb[2]=sizes[2]*.05;
      Rb[3]=sizes[3]*.1;
      Rb[4]=sizes[4]*.1;
      Rb[5]=sizes[5]*.1;
      Rb[6]=sizes[6]*.1;
      Rb[7]=sizes[7]*.0;
      Rb[8]=sizes[8]*.0;
      
      mod[0]=1;
      mod[1]=0;
      mod[2]=0;
      mod[3]=0;
      mod[4]=0;
      mod[5]=0;
      mod[6]=0;
      mod[7]=2;
      mod[8]=2;
      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      texts[0]="RGB, shell burning feeds a growing He core.";
      texts[1]="Increasing core mass prompts He burning, creating a convective core. Blue loop.";
      texts[2]="An inert CO core begins to form below the He burning shells. H burning stops due to the expansion. E-AGB.";
      texts[3]="H burning reignited. Unstable He shell burning. TP-AGB.";
      //The growing partially degenerate core reaches the C burning temperature. 
      texts[4]="C FLASH";
      texts[5]="After the C-flash and flames, if Mc>1.37, the star will evolve as a massive one, and collapse into a NS.";
      texts[6]="If Mc<1.37, Ne fusion will be avoided, and eventually leave behind a ONeMg-WD.";
      texts[7]="";
      
      speeds[0]=0.003;
      speeds[1]=0.003;
      speeds[2]=0.003;
      speeds[3]=0.003;
      speeds[4]=0.03;
      speeds[5]=0.003;
      speeds[6]=0.003;
      speeds[7]=0.03;
    }
    if(index>6){
      shed();
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],1);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}





void sm1(){
  background(0);
    if(once==false){
      once=true;
      
      mx=6;
      
      star1 = new Star();
      sizes[0]=height/2;
      sizes[1]=height/1.8;
      sizes[2]=height/1.6;
      sizes[3]=height/1.4;
      sizes[4]=height/2;
      sizes[5]=height/1.3;
      sizes[6]=height/6;
      
      curve[0]=1;
      curve[1]=0;
      curve[2]=1;
      curve[3]=1;
      curve[4]=1;
      curve[5]=0;
      curve[6]=0;
      
      diff[0]=0;
      diff[1]=0;
      diff[2]=0;
      diff[3]=0;
      diff[4]=0;
      diff[5]=0;
      diff[6]=0;
      
      colors[0]=color(80,80,255);
      colors[1]=color(80,80,255);
      colors[2]=color(255,255,50);
      colors[3]=color(255,50,50);
      colors[4]=color(255,150,100);
      colors[5]=color(255,40,40);
      colors[6]=color(255,255,255);
      
      Ra[0]=sizes[0]*.1;
      Ra[1]=sizes[1]*.1;
      Ra[2]=sizes[2]*.25;
      Ra[3]=sizes[3]*.3;
      Ra[4]=sizes[4]*.1;
      Ra[5]=sizes[5]*.1;
      Ra[6]=sizes[6]*.0;
      
      Rb[0]=sizes[0]*.05;
      Rb[1]=sizes[1]*.05;
      Rb[2]=sizes[2]*.05;
      Rb[3]=sizes[3]*.05;
      Rb[4]=sizes[4]*.03;
      Rb[5]=sizes[5]*.05;
      Rb[6]=sizes[6]*.0;
      
      mod[0]=0;
      mod[1]=0;
      mod[2]=0;
      mod[3]=0;
      mod[4]=0;
      mod[5]=0;
      mod[6]=2;

      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      texts[0]="Blue supergiant, convective core";
      texts[1]="H shell begins around inert He core. Yellow supergiant.";
      texts[2]="Red supergiant.";
      texts[3]="He fusion begins. Blue loop (depends on the star).";
      texts[4]="C, Ne and Si burning, onion model. Fe core collapse.";
      texts[5]="SUPERNOVA.";
      
      speeds[0]=0.003;
      speeds[1]=0.003;
      speeds[2]=0.003;
      speeds[3]=0.003;
      speeds[4]=0.003;
      speeds[5]=0.03;
    }
    if(index>6){
      shed();
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],1);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}





void sm2(){
  background(0);
    if(once==false){
      once=true;
      
      mx=6;
      
      star1 = new Star();
      sizes[0]=height/1.5;
      sizes[1]=height/1.5;
      sizes[2]=height/3;
      sizes[3]=height/3;
      sizes[4]=height/3;
      sizes[5]=height/3;
      sizes[6]=height/6;
      
      curve[0]=1;
      curve[1]=0;
      curve[2]=1;
      curve[3]=1;
      curve[4]=1;
      curve[5]=0;
      curve[6]=0;
      
      diff[0]=0;
      diff[1]=0;
      diff[2]=0;
      diff[3]=0;
      diff[4]=0;
      diff[5]=0;
      diff[6]=0;
      
      colors[0]=color(120,120,255);
      colors[1]=color(120,120,255);
      colors[2]=color(80,80,255);
      colors[3]=color(120,120,200);
      colors[4]=color(120,120,255);
      colors[5]=color(120,120,255);
      colors[6]=color(255,255,255);
      
      Ra[0]=sizes[0]*.1;
      Ra[1]=sizes[1]*.1;
      Ra[2]=sizes[2]*.25;
      Ra[3]=sizes[3]*.3;
      Ra[4]=sizes[4]*.1;
      Ra[5]=sizes[5]*.1;
      Ra[6]=sizes[6]*.0;
      
      Rb[0]=sizes[0]*.05;
      Rb[1]=sizes[1]*.05;
      Rb[2]=sizes[2]*.05;
      Rb[3]=sizes[3]*.05;
      Rb[4]=sizes[4]*.03;
      Rb[5]=sizes[5]*.05;
      Rb[6]=sizes[6]*.0;
      
      mod[0]=0;
      mod[1]=0;
      mod[2]=0;
      mod[3]=0;
      mod[4]=0;
      mod[5]=0;
      mod[6]=2;

      
      fadeIN[0]=true;
      fadeIN[1]=true;
      fadeIN[2]=true;
      fadeIN[3]=true;
      
      fadeOUT[0]=true;
      fadeOUT[1]=true;
      fadeOUT[2]=true;
      fadeOUT[3]=true;
      
      texts[0]="Blue supergiant, convective core.";
      texts[1]="Extreme mass loss. Wolf Rayet star with hydrogen lines.";
      texts[2]="Luminous Blue Variable (depends on star).";
      texts[3]="He fusion. Wolf Rayet star without hydrogen lines.";
      texts[4]="Core collapse. Supernova.";
      texts[5]="SUPERNOVA.";
      
      speeds[0]=0.003;
      speeds[1]=0.003;
      speeds[2]=0.003;
      speeds[3]=0.003;
      speeds[4]=0.01;
      speeds[5]=0.03;
    }
    if(index>0 && alph>10){
      shed2(colors[1]);
    }
    if(index>6){
      shed();
    }
    star1.sized(sizes[index],sizes[index+1],colors[index],colors[index+1],speeds[index],index,mx,diff[index],1);
    star1.transport(mod[index],true,true,Ra[index],Ra[index+1],Rb[index],Rb[index+1],speeds[index],index,diff[index]);
}
