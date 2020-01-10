PShape petale;

void setup() {
  size(500,500);
  background(255);
  frameRate(30);
  petale = loadShape("testDessinSvg-01.svg");
}

void draw() {
  scale(1,-1);
  translate(width/2,-height/2);
  petale.setStroke(55);
  stroke(55);
  //ellipseMode(CENTER);
  ellipse(10,10,10,10);
  for(int i = 0;i < 10 ; 
  shape(petale,100,100,250,250);
  
}
