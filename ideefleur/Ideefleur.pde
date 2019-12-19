int diametreCentre = 50;                                                                  // Diamètre du cercle central (invisible)
int rayonCentre = diametreCentre/2;
float taille = 0;                                                                           // Permet de définir la "taille" de la ligne (ou des formes)
float tailleMax = 15;
float transparency = 0;
PShape fleur;

void setup() {
  size(800, 800);
  background(255);
  frameRate(30);
  fleur = loadShape("petale.svg");
}  


float [] coordonneesBase= {rayonCentre, 0,                                                // Tableau contenant les coordonnees des bases de chaque forme
                          sqrt(2)*rayonCentre/2, sqrt(2)*rayonCentre/2,
                          0, rayonCentre,
                          -sqrt(2)*rayonCentre/2, sqrt(2)*rayonCentre/2,
                          -rayonCentre, 0,
                          -sqrt(2)*rayonCentre/2, -sqrt(2)*rayonCentre/2,
                          0, -rayonCentre,
                          sqrt(2)*rayonCentre/2, -sqrt(2)*rayonCentre/2};
                          
void draw(){
  fleur.setFill(false);
  shape(fleur, 10, 10, 80, 80);
  
  scale(1, -1);                                                                          // inverse l'axe y
  translate(width/2, -height/2);                                                         // centre l'origine du repère
  stroke(0);
  fill(255);
  circle(0, 0, diametreCentre);
  
  //Formes
  //text(mouseX mouseY, 10, 30);
  beginShape();
  curveVertex(100, 200);
  curveVertex(coordonneesBase[0], coordonneesBase[1]);
  curveVertex(mouseY, mouseX);
  curveVertex(500, 500);
  endShape();
    
  stroke(50);
  line(coordonneesBase[0], coordonneesBase[1], rayonCentre*taille, 0);                                                        //On trace les lignes
  line(coordonneesBase[2], coordonneesBase[3], sqrt(2)*rayonCentre*taille/2, sqrt(2)*rayonCentre*taille/2);
  line(coordonneesBase[4], coordonneesBase[5],0,rayonCentre*taille);
  line(coordonneesBase[6], coordonneesBase[7], -(sqrt(2)*rayonCentre*taille/2), sqrt(2)*rayonCentre*taille/2);
  line(coordonneesBase[8], coordonneesBase[9], -(rayonCentre)*taille, 0);
  line(coordonneesBase[10], coordonneesBase[11], -(sqrt(2)*rayonCentre*taille/2), -(sqrt(2)*rayonCentre*taille/2));
  line(coordonneesBase[12], coordonneesBase[13], 0, -(rayonCentre)*taille);
  line(coordonneesBase[14], coordonneesBase[15], sqrt(2)*rayonCentre*taille/2, -(sqrt(2)*rayonCentre*taille/2));
  if (taille < tailleMax) {taille = taille + 0.1;}
  if (transparency > 0) { transparency += 0.25; }
    tint (0,transparency);
    
   
   
  

}

/*void ligne(float x1, float y1, float x2, float y2) {
 line(x1,y1,x2,y2);
 }*/
 
 void mousePressed() {
   
 }

void extension(){
  while(taille < tailleMax){
    taille += 1;
  }
    
}
