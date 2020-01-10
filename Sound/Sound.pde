import ddf.minim.*;

Minim minim;
//AudioSnippet ping;
AudioPlayer player;

void setup() {
  minim = new Minim(this);
  player = minim.loadFile("medicine.mp3");
  size(800,800);
  player.play();
}

void draw() {
  background(255);
  if (player.bufferSize() > 1100) {
     for(int i = 0; i < player.bufferSize() - 1; i++)
    {
      
        float x1 = map( i, 0, player.bufferSize(), 0, width );
        float x2 = map( i+1, 0, player.bufferSize(), 0, width );
        line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
        line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
      
    }
  }
  float posx = map(player.position(), 0, player.length(), 0, width);
  stroke(0,200,0);
  line(posx, 0, posx, height);
}




void keyPressed()
{
  if ( player.isPlaying() )
  {
    player.pause();
  }
  // if the player is at the end of the file,
  // we have to rewind it before telling it to play again
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
}
void stop(){
  minim.stop();
  super.stop();
}
