//PARAMETRES
float phi1=0.7;
float constant1=1.2;
float constant2=1;
float constant3=1;
float constant4=0.89;
//These parameters can be altered to get different shapes , Caution:- for some values the algorithm blows up. 

//
float x=0;
float y=0;
float x2=0;
float y2=0;
float y3;
float x3;
float x4=0;
int count=0;
float y4=0;
void setup(){
  size(500,500);
  background(240);
  
  
}
void draw(){
  
  wings();
}
void wings()
{
  translate(width/2,height/2);
  if(x<100 & y<100){  
    x+=constant1+sin(radians(3*x)+phi1);
    y+=constant2;
    y3=y;
    x3=x;
    }

  if(x2<150 & y2<150){
    x2+=constant3+abs(sin(radians(x*2.6)));
    y2-=constant4;
  }

  if(x4<x2-30)
    {x4++;
     y4+=+0.3*cos(x4/5)+.3;
    }

  else if(y3>y4 &abs(x3)>40)
 {
   float slope=(y2-y)/(x2-x);
    y3=y3+slope*random(0,1);
    x3=x3+.9;
    
    stroke(250*(noise(0,250)),random(0,250),random(100,150),random(100,250));
    line(x3+10*sin(x3/10),y3,0,0);
    line(-(x3+10*sin(x3/10)),y3,0,0);
  
  }
  else if(x3<200 & y3<50& count<100)
  {float slope=(y2-50)/(x2-100);
    y3=y3+slope*.5;
    x3=random(0,3)-x3+.3;
    count++;
    stroke((x3+y3)%250,random(x3+y3)%250,random(x3+y3)%250,random(100,150));
    line(x3+10*sin(x3/10),y3,0,0);
    line(-(x3+10*sin(x3/10)),y3,0,0);
  }

  strokeWeight(3);
 
}
