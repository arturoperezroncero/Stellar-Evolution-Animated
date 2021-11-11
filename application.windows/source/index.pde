void index(){
  background(0);
  
  icon("Fragmentation",0,-3*width/7,height/6);
  lines(-3*width/7,height/15,-3*width/7,0);
    icon("Protostar",1,-3*width/7,-height/6);
  shape2(-2.6*width/7,-height/6,-2.35*width/7,-height/6,
  -2.35*width/7,-height/6,-2.35*width/7,-height/6);
  shape2(-2.1*width/7,-2.5*height/6,-2.35*width/7,-2.5*height/6,
  -2.35*width/7,2.65*height/6,-2.1*width/7,2.65*height/6);
  fill(255);
  textFont(SQ);
  pushMatrix();
  translate(-2.4*width/7,0);
  rotate(-PI/2);
  text("Pre-MS",0,0);
  popMatrix();
  
  icon("<0.08 M",2,-2*width/7,-2*height/6);
  icon("0.08-0.6 M",3,-2*width/7,-height/6);
  icon("0.6-2 M",4,-2*width/7,0);
  icon("2-8 M",6,-2*width/7,height/6);
  icon(">8 M",7,-2*width/7,2*height/6);
  shape1(-1.9*width/7,-1.5*height/6,-1.65*width/7,-1.5*height/6,
  -1.65*width/7,-0.25*height/7,-1.40*width/7,-0.25*height/7,
  -1.40*width/7,-2.5*height/6,-width/7,-2.5*height/6);
  
  fill(255);
  textFont(SQ);
  pushMatrix();
  translate(-1.53*width/7,0.045*height/6);
  text("MS",0,0);
  popMatrix();
  
  shape1(-1.9*width/7,2.65*height/6,-1.65*width/7,2.65*height/6,
  -1.65*width/7,0.25*height/7,-1.40*width/7,0.25*height/7,
  -1.40*width/7,2.25*height/6,-width/7,2.25*height/6);

  
  //shape1(-1.9*width/7,2.65*height/6,-1.65*width/7,2.65*height/6,
  //-1.65*width/7,0.25*height/7,-1.40*width/7,0.25*height/7,
  //-1.40*width/7,2.65*height/6,-width/7,2.65*height/6);
  
  
  
  

  
  icon("<0.4 M",3,-width/7,-2*height/6);
  lines(-0.8*width/7,-2*height/6,-0.2*width/7,-2*height/6);
  //icon("0.4-1 M",4,-width/7,-height/6);
  //icon("1-8 M",5,-width/7,0);
  //icon("8-12 M",6,-width/7,height/6);
  icon("0.4-2 M",4,-width/7,-height/6);
  icon("2-12 M",6,-width/7,0);
  icon(">12 M",7,-width/7,1.5*height/6);
  lines(-0.65*width/7,1.25*height/6,-0.4*width/7,1.05*height/6);
  lines(-.7*width/7,1.8*height/6,-0.5*width/7,2*height/6);
  
  shape1(-width/7,-1.4*height/6,-0.75*width/7,-1.4*height/6,
  -0.75*width/7,-0.80*height/7,-0.30*width/7,-0.80*height/7,
  -0.30*width/7,-1.4*height/6,0,-1.4*height/6);
  
  fill(255);
  textFont(SQ);
  pushMatrix();
  translate(-0.55*width/7,-0.50*height/7);
  text("RGB",0,0);
  popMatrix();
  
  shape1(-width/7,0.45*height/6,-0.75*width/7,0.45*height/6,
  -0.75*width/7,-0.30*height/7,-0.30*width/7,-0.30*height/7,
  -0.30*width/7,0.45*height/6,0,0.45*height/6);
  
  
  //icon("<0.4 M",3,-width/7,-2*height/6);
  //lines(-0.8*width/7,-2*height/6,-0.2*width/7,-2*height/6);
  //icon("0.4-1 M",4,-width/7,-height/6);
  //icon("1-8 M",5,-width/7,0);
  //icon("8-12 M",6,-width/7,height/6);
  //icon(">12 M",7,-width/7,2*height/6);
  //lines(-0.7*width/7,1.7*height/6,-0.35*width/7,1.35*height/6);
  //lines(-.65*width/7,2.1*height/6,-0.5*width/7,2.15*height/6);
  
  //shape1(-width/7,-1.4*height/6,-0.75*width/7,-1.4*height/6,
  //-0.75*width/7,-0.65*height/7,-0.30*width/7,-0.65*height/7,
  //-0.30*width/7,-1.4*height/6,0,-1.4*height/6);
  
  //fill(255);
  //textFont(SQ);
  //pushMatrix();
  //translate(-0.55*width/7,-0.35*height/7);
  //text("RGB",0,0);
  //popMatrix();
  
  //shape1(-width/7,1.4*height/6,-0.75*width/7,1.4*height/6,
  //-0.75*width/7,-0.15*height/7,-0.30*width/7,-0.15*height/7,
  //-0.30*width/7,0.4*height/6,0,0.4*height/6);
  
  
  icon("He-WD",12,0,-2*height/6);
  icon("<2.3 M",4,0,-height/6);
  lines(0.3*width/7,-height/6,.7*width/7,-height/6);
  icon(">2.3 M",6,0,0);
  lines(0.3*width/7,0,.7*width/7,0);
  lines(0.25*width/7,.25*height/6,.75*width/7,.75*height/6);
  icon("<45 M",7,0,height/6);
  lines(0.35*width/7,1.25*height/6,.7*width/7,1.75*height/6);
  icon(">45 M",8,0,2.2*height/6);
  lines(0.45*width/7,2.2*height/6,.6*width/7,2.2*height/6);
  
  icon("CO-WD",12,width/7,-height/6);
  icon("<8 M",5,width/7,0);
  lines(width/7,-.35*height/6,width/7,-.6*height/6);
  icon("8-12 M",6,width/7,height/6);
  lines(1.2*width/7,.8*height/6,1.7*width/7,1.1*height/12);
  lines(1.2*width/7,1.2*height/6,1.6*width/7,2.8*height/12);
  icon("BH",14,width/7,2.2*height/6);
  textFont(SQ);
  text("OR",1.4*width/7,2.25*height/6);
  text("AGB",0.5*width/7,-0.5*height/6);
  text("Super-AGB",2*width/7,0*height/6);
  icon("NS",15,1.7*width/7,2.2*height/6);
  
  icon("8-11 M",6,2*width/7,height/12);
  lines(2.3*width/7,height/12,2.7*width/7,height/12);
  icon("11-12 M",7,2*width/7,3*height/12);
  lines(2.4*width/7,3*height/12,2.7*width/7,3*height/12);
  
  icon("ONeMg-WD",12,3*width/7,height/12);
  icon("NS",13,3*width/7,3*height/12);
}

void press(){
  noFill();
  stroke(255,1);
  strokeWeight(7);
  ellipse(-3*width/7,height/6,height/5,height/5);
  ellipse(-3*width/7,-height/6,height/5,height/5);
  
  ellipse(-2*width/7,-height/6,height/5,height/5);
  ellipse(-2*width/7,0,height/5,height/5);
  ellipse(-2*width/7,height/6,height/5,height/5);
  
  ellipse(-width/7,-height/6,height/5,height/5);
  ellipse(-width/7,0,height/5,height/5);
  
  ellipse(0,-2*height/6,height/5,height/5);
  ellipse(0,-height/6,height/5,height/5);
  ellipse(0,height/6,height/5,height/5);
  ellipse(0,2.2*height/6,height/5,height/5);
  
  ellipse(width/7,0,height/5,height/5);
  ellipse(width/7,height/6,height/5,height/5);
}
