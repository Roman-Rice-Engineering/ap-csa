static float GRAVITY = 1;

KeypressHandler keyboard = new KeypressHandler();

World world;

void setup(){
  frameRate(60);
  fullScreen();
  ArrayList<Island> isls = new ArrayList<Island>();
  Player player = new Player(100, 100);
  
  for(int i = 0 ; i < width; i += width / 5){
      isls.add(new Island(i, random(200, height-200)));
  }
  
  world = new World(player, isls);
}

void draw(){
  background(170, 190, 200);
  world.draw();
  drawInitial();
}

void keyPressed(){
  keyboard.put(key, true);
}

void keyReleased(){
  keyboard.put(key, false);
}
