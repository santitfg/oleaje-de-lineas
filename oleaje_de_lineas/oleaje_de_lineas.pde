/*
Santiago Fernandez Garcia 
2020
*/
float b=0;//ordenada al origen
float m=0;//pendiente 
float t=0;
float amplitudNoise =15;
color col=color(0,0,0);
int sentido=1;

void setup(){
  randomSeed(2020);
  noiseSeed(2020);
  size(960,540);//,P2D);//1920 1080 // 900 x900
  
  background(75);
}

void draw(){
  //background(70);
  stroke(col);
  for(float x=0;x<width;x++){
    t+=0.1;
    float n=noise(t);
    point(x,x*m+b+amplitudNoise*n);
    //println(t +"y n:"+n);
  }
  if(frameCount<height){
    col=color(random(255),random(255),random(255));
  }else{
    col=75;}
  
  if(b==height||b<-2){sentido *= -1;}//simplifique por que tenia dos if con contenido identico

  b+=sentido;
  
  /*
    if(true){
      println(frameCount);
      saveFrame("output/secuencia_####.png");
    }//else {}
    */
}
