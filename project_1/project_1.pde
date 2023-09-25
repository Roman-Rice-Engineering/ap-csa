static float GRAVITY = 1;

Player player = new Player(100, 100);

void setup(){
  frameRate(60);
  fullScreen();
}

void draw(){
  background(170, 190, 200);
  player.draw();
}
