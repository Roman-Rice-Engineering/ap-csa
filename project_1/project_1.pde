static float GRAVITY = 1;

Player player = new Player(100, 100);
KeypressHandler keyboard = new KeypressHandler();

void setup(){
  frameRate(60);
  fullScreen();
}

void draw(){
  background(170, 190, 200);
  player.draw();
}

void keyPressed(){
  keyboard.put(key, true);
}

void keyReleased(){
  keyboard.put(key, false);
}
