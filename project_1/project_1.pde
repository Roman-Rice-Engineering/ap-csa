static float GRAVITY = 1;

Player player = new Player(100, 100);
KeypressHandler keyboard = new KeypressHandler();

Island island;

void setup(){
  frameRate(60);
  fullScreen();
  island = new Island(500, 500);
}

void draw(){
  background(170, 190, 200);
  island.draw();
  player.draw();
}

void keyPressed(){
  keyboard.put(key, true);
}

void keyReleased(){
  keyboard.put(key, false);
}
