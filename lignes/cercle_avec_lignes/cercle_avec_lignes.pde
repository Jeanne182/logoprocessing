import ddf.minim.*;   // Importing the audio Library called minim

Minim minim;          // Needed to call minim
AudioInput in;        // Setting a variable called "in" whose type is AudioInput (microphone)

int diametreCentre = 250;                                                                  // Diamètre du cercle central (invisible)
int rayonCentre = diametreCentre/2;
float tailleMin = diametreCentre;                                                                           // Permet de définir la "taille" de la ligne (ou des formes)
float tailleMax = 300;

int opacity = 0;

Line[] line_array = new Line[60];

void setup() {
  size(800, 800);
  background(255);
  frameRate(60);
  
  minim = new Minim(this); //The command "this" is needed to use minim in THIS program
  in = minim.getLineIn();  //We start recording the microphone
  
 for(int i = 0 ; i < line_array.length ; i++){
    line_array[i]=new Line();
  }
  
  smooth();
}  

void draw(){
  //float time=millis();
  //if(time < 1000){taille+=100;}
  
   //scale(1, -1);                                                                          // inverse l'axe y
  translate(width/2, height/2); // centre l'origine du repère
  background(255);
  
  
  //for(int i=0; i<60; i++){
  //  float taille = random(tailleMin, tailleMax);
  //  rotate(PI/30);
  //  stroke(random(0,255), random(0,255), random(0,255));
  //  line(0, 0, taille , 0);
  //}
  
  for(int i=0 ; i < line_array.length ; i++){
    line_array[i].tailleVariation(i);
    line_array[i].displayLine();
    rotate(PI/30);
  }
  
  stroke(255);  
  fill(255);
  circle(0, 0, diametreCentre);

}

void apparition(){
  stroke(0,0,0,255);
  line(0,0,100,100);
  
  while(opacity < 255){
    opacity += 1;
    stroke(0,0,0,opacity);
    line(0,0,100,opacity);
    background(255);
  }
    
}

void mousePressed(){
  background(255);
  textSize(32);
  fill(0, 0, 0);
  text("Writing the history of the future.", -50, 0);
  
  for(int i = 0 ; i < line_array.length ; i++){
    line_array[i]=new Line();
  }
}
