static float GRAVITY = 1;

Player player = new Player(100, 100);
KeypressHandler keyboard = new KeypressHandler();

World world;

void setup(){
  frameRate(60);
  fullScreen();
  ArrayList<Island> isls = new ArrayList<Island>();
  Player player = new Player(100, 100);
  
  isls.add(new Island(1500, 500));
  isls.add(new Island(1200, 200));
  isls.add(new Island(500, 300));
  isls.add(new Island(450, 850));
  isls.add(new Island(900, 750));
  isls.add(new Island(100, 500));
  
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
