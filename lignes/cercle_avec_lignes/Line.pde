
class Line{
  float taille=100;
  color couleur=color(random(0,255), random(0,255), random(0,255));
  
  void tailleVariation(){
    taille=random(120, 300);
  }
  
  void displayLine(){
    stroke(couleur);
    line(0, 0, taille , 0);
  }
  
}
