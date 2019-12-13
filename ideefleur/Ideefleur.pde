void setup() {
  size(800, 800);
  background(255);
}
int diametreCentre = 50;
int rayonCentre = diametreCentre/2;
int taille = 7;

void draw() {
  scale(1, -1);
  translate(width/2, -height/2);
  stroke(255);
  fill(255);
  circle(0, 0, diametreCentre);
  stroke(50);
  line(coordonneesBase[0], coordonneesBase[1], rayonCentre*taille, 0);
  line(coordonneesBase[2], coordonneesBase[3], sqrt(2)*rayonCentre*taille/2, sqrt(2)*rayonCentre*taille/2);
  line(coordonneesBase[4], coordonneesBase[5],0,rayonCentre*taille);
  line(coordonneesBase[6], coordonneesBase[7], -(sqrt(2)*rayonCentre*taille/2), sqrt(2)*rayonCentre*taille/2);
  line(coordonneesBase[8], coordonneesBase[9], -(rayonCentre)*taille, 0);
  line(coordonneesBase[10], coordonneesBase[11], -(sqrt(2)*rayonCentre*taille/2), -(sqrt(2)*rayonCentre*taille/2));
  line(coordonneesBase[12], coordonneesBase[13], 0, -(rayonCentre)*taille);
  line(coordonneesBase[14], coordonneesBase[15], sqrt(2)*rayonCentre*taille/2, -(sqrt(2)*rayonCentre*taille/2));
}

/*void ligne(float x1, float y1, float x2, float y2) {
 line(x1,y1,x2,y2);
 }*/
 
float [] coordonneesBase= {rayonCentre, 0,
                          sqrt(2)*rayonCentre/2, sqrt(2)*rayonCentre/2,
                          0, rayonCentre,
                          -sqrt(2)*rayonCentre/2, sqrt(2)*rayonCentre/2,
                          -rayonCentre, 0,
                          -sqrt(2)*rayonCentre/2, -sqrt(2)*rayonCentre/2,
                          0, -sqrt(2)*rayonCentre/2,
                          sqrt(2)*rayonCentre/2, -sqrt(2)*rayonCentre/2};
