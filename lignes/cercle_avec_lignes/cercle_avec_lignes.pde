import ddf.minim.*;   // Importing the audio Library called minim
PFont myFont;

Minim minim;          // Needed to call minim
AudioInput in;        // Setting a variable called "in" whose type is AudioInput (microphone)

int diametreCentre = 250;                                                                  // Diamètre du cercle central (invisible)
int rayonCentre = diametreCentre/2;
float tailleMin = diametreCentre;                                                                           // Permet de définir la "taille" de la ligne (ou des formes)
float tailleMax = 300;

int opacity = 0;

Line[] line_array = new Line[21];

void setup() {
  fullScreen();
  //size(800, 800);
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
  translate(width/2, height/2); // centre l'origine du repère
  background(255);
  
  
  for(int i=0 ; i < line_array.length ; i++){
    line_array[i].tailleVariation(i);
    line_array[i].displayLine();
    rotate(-PI/20);
  }
  
  rotate(21*PI/20);
  
  stroke(255);  
  fill(255);
  circle(0, 0, diametreCentre);
  fill(255);
  rect(-width/2,8,width,height/2);
  myFont = createFont("data/futur.ttf", 30);
  textFont(myFont);
  textAlign(CENTER);
  fill(0, 0, 0,255);
  //text("WTH", -58, 60);
  text("Writing the History of the Future", 0, 55);
  textSize(22);
  text("- ZKM -", 0, 90);
}

void apparition(){
  stroke(0,0,0,255);
  line(0,0,100,100);
  
  while(opacity < 255){
    opacity += 1;
    stroke(0,0,0,opacity);
    line(0,0,100,100);
    background(255);
  }
    
}

void mousePressed(){  
  for(int i = 0 ; i < line_array.length ; i++){
    line_array[i]=new Line();
  }
}
