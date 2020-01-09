PShape fleur;

void setup() {
  size(800, 800);
  background(255);
  frameRate(30);
  fleur = loadShape("petale.svg");
}  

void draw(){
  fleur.setFill(false);
  shape(fleur, 10, 10, 80, 80);
  
  scale(1, -1);                                                                          // inverse l'axe y
  translate(width/2, -height/2);                                                         // centre l'origine du repère
  stroke(0);
  fill(255);
}
