
class Line{
  color [] tableauCouleurs= {//color(243, 228,0), //jaune
                             color(251,197,3,150),
                             color(239,141,27,150),
                             color(233,97,30,150),
                             color(226,34,33,150),
                             color(195,1,124,150),
                             color(108,56,138,150),
                             color(67,77,152,150),
                             color(41,112,175,150),
                             color(1,149,186,150),
                             //color(0,141,90), vert moche
                             color(139,186,37,150)
                           };
                                 
    
  float taille=100;
  //color couleur=color(random(0,255), random(0,255), random(0,255));
  color couleur=tableauCouleurs[int(random(0,9.9))];
  
  void tailleVariation(int i){
    taille= in.left.get(i)*8000; // We get the frequencies from the left entrance (it would be the same with right)
  }                              // We multiply by 8000 so we can really see the variation appear on the screen
  
  void displayLine(){
    
    stroke(couleur);
    strokeWeight(4);
    line(0, 0, taille , 0);
  }
  
}