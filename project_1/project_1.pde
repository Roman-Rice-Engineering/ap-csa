static float GRAVITY = 1;

Player player = new Player(100, 100);
KeypressHandler keyboard = new KeypressHandler();

World world;

void setup(){
  frameRate(60);
  fullScreen();
  ArrayList<Island> isls = new ArrayList<Island>();
  Player player = new Player(100, 100);
  
  isls.add(new Island(500, 500));
  isls.add(new Island(900, 900));
  
  world = new World(player, isls);
}

void draw(){
  background(170, 190, 200);
  world.draw();
}

void keyPressed(){
  keyboard.put(key, true);
}

void keyReleased(){
  keyboard.put(key, false);
}
