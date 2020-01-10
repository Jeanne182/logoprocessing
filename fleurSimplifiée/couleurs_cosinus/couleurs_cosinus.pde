int rayonCentre = 70;
float taille = 0;                                                                           // Permet de définir la "taille" de la ligne (ou des formes)
float tailleMax = 15;
float transparency = 0;

void setup() {
  size(800, 800);
  background(255);
  
}

float [] coordonneesBase= {rayonCentre, 0,                                                // Tableau contenant les coordonnees des bases de chaque forme
                          sqrt(2)*rayonCentre/2, sqrt(2)*rayonCentre/2,
                          0, rayonCentre,
                          -sqrt(2)*rayonCentre/2, sqrt(2)*rayonCentre/2,
                          -rayonCentre, 0,
                          -sqrt(2)*rayonCentre/2, -sqrt(2)*rayonCentre/2,
                          0, -rayonCentre,
                          sqrt(2)*rayonCentre/2, -sqrt(2)*rayonCentre/2 };





void draw(){      
  translate(width/2, height/2);
  stroke(0);
  fill(255);
  int R=0;
  int G=0;
  int B=0;
  
  for (int i=0; i<16; i+=2){
    float x = coordonneesBase[i];
    float y = coordonneesBase[i+1];
    
    
    
    if(acos(x)>0 && acos(x)<2*PI/3){
    R=255;
    }
    
    if(acos(x)>2*PI/3 && acos(x)<4*PI/3){
    G=255;
    }
    
    if(acos(x)>4*PI/3 && acos(x)<2*PI){
    B=255;
    } 
    
    circle(x, y, 50);
    fill(R, G, B);
    
  }
  
}
