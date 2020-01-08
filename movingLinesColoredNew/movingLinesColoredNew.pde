PGraphics pg; 
static final int nbLignes = 30;
float t;

void setup(){
  size(500,500);
  pg = createGraphics(width, height); // creation PGraphics avec même taille que la fenetre
  frameRate(40);
}

void draw(){
    
    float time = millis();
    
    
    if (time < 4500) {
           background(255);
           translate(width/2,height/2);
        
          for (int i = 0; i < nbLignes; i++) {
            line(x1(t + i), y1(t + i),x2(t + i),y2(t + i));
          }
          t++;
        
        
          stroke(20);
          strokeWeight(7);
        
        
          translate(-width/2,-height/2);
          textSize(36);
          textAlign(CENTER);
          text("Writing the History of the future", width/5,height/3,3*width/5,3*height/5);
          fill(255,255,255);
      
    }
    
    else if (time >=4500 && time < 4510){ background(255,0,0);}
    else if (time >=4510 && time < 4520){ background(245,0,10);}
    else if (time >=4520 && time < 4530){ background(235,0,20);}
    else if (time >=4530 && time < 4540){ background(225,0,30);}
    else if (time >=4540 && time < 4550){ background(215,0,40);}
    else if (time >=4550 && time < 4560){ background(205,0,50);}
    else if (time >=4560 && time < 4570){ background(195,0,60);}
    else if (time >=4570 && time < 4580){ background(185,0,70);}
    else if (time >=4580 && time < 4590){ background(175,0,80);}
    else if (time >=4590 && time < 4600){ background(165,0,90);}
    else if (time >=4600 && time < 4610){ background(155,0,100);}
    else if (time >=4610 && time < 4620){ background(145,0,110);}
    else if (time >=4620 && time < 4630){ background(135,0,120);}
    else if (time >=4630 && time < 4640){ background(125,0,130);}
    else if (time >=4640 && time < 4650){ background(115,0,140);}
    else if (time >=4650 && time < 4660){ background(105,0,150);}
    else if (time >=4660 && time < 4670){ background(95,0,160);}
    else if (time >=4670 && time < 4680){ background(85,0,170);}
    else if (time >=4680 && time < 4690){ background(75,0,180);}
    else if (time >=4690 && time < 4700){ background(65,0,190);}
    else if (time >=4700 && time < 4710){ background(55,0,200);}
    else if (time >=4710 && time < 4720){ background(45,0,210);}
    else if (time >=4720 && time < 4730){ background(35,0,220);}
    else if (time >=4730 && time < 4740){ background(25,0,230);}
    else if (time >=4740 && time < 4750){ background(15,0,240);}
    else if (time >=4750 && time < 4760){ background(5,0,250);}
    else if (time >=4760 && time < 4770){ background(0,0,255);}
    
    
    if (time >=4770) {
            background(0,0,255);
            translate(width/2,height/2);
            for (int i = 0; i < nbLignes; i++) {
              line(x1(t + i), y1(t + i),x2(t + i),y2(t + i));
            }
           t++;
      
      
            stroke(255,255,0);
            strokeWeight(7);
      
            // Dessin sur le PGraphics
            pg.beginDraw();
            pg.textSize(36);
            pg.textAlign(CENTER);
            pg.fill(0,0,255);
            pg.text("Writing the History of the future", width/5,height/3,3*width/5,3*height/5);
            pg.endDraw();
            
            // Copie du PGraphics sur l'écran avec notre blend personnalisé
            loadPixels(); // charge les pixels de l'écran pour les modifier
            pg.loadPixels(); // charge les pixels du PGraphics pour les lire
            for(int x = 0; x < width; ++x){
             for( int y = 0; y < height; ++y){
               int id = x + y * width;
               float redScreen = red(pixels[id]);
               float greenScreen = green(pixels[id]);
               float blueScreen = blue(pixels[id]);
               pixels[id] = color(redScreen - blue(pg.pixels[id]), greenScreen, blueScreen);
             }
             updatePixels(); // renvoie les pixels modifiés à l'écran
            }
    
    }
    
    
    if (time >=8000) {
            background(255,255,0); // Yellow Background 
            for (int i = 0; i < nbLignes; i++) {
              line(x1(t + i), y1(t + i),x2(t + i),y2(t + i));
            }
           t++;
      
      
            stroke(255,0,255); //Magenta Lines
            strokeWeight(7);
      
            // Dessin sur le PGraphics
            pg.beginDraw();
            pg.textSize(36);
            pg.textAlign(CENTER);
            pg.fill(255,255,0); //Yellow Text to blend with the background
            pg.text("Writing the History of the future", width/5,height/3,3*width/5,3*height/5);
            pg.endDraw();
            
            // Copie du PGraphics sur l'écran avec notre blend personnalisé
            loadPixels(); // charge les pixels de l'écran pour les modifier
            pg.loadPixels(); // charge les pixels du PGraphics pour les lire
            for(int x = 0; x < width; ++x){
             for( int y = 0; y < height; ++y){
               int id = x + y * width;
               float redScreen = red(pixels[id]);
               float greenScreen = green(pixels[id]);
               float blueScreen = blue(pixels[id]);
               pixels[id] = color(redScreen - green(pixels[id]), greenScreen, blueScreen);
             }
             updatePixels(); // renvoie les pixels modifiés à l'écran
            }
    
    }
    
    
    
    
  }
  
float x1(float t) {
 return sin(t/10) * 100 + sin(t/5)*20;
}

float y1(float t) {
  return cos(t/10)*100;
}

float x2(float t) {
  return sin(t/10)*200 + sin(t)*2;
}
float y2(float t) {
  return cos(t/20)*200 + cos(t/12) * 20;
}
