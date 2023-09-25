static final float COURSE_LENGTH = 10;
static final float GRAVITY = 1;

KeypressHandler keyboard = new KeypressHandler();
GameState gameState = GameState.MENU;
Menu menu = new Menu();
World world;
Score score;

void setup(){
  frameRate(60);
  fullScreen();
  ArrayList<Island> isls = new ArrayList<Island>();
  Player player = new Player(100, 100);
  ArrayList<Coin> coins = new ArrayList<Coin>();
  for(int i = 0 ; i < COURSE_LENGTH*width; i += width / 5){
      float islandHeight = random(200, height-200);
      isls.add(new Island(i, islandHeight));
      coins.add(new Coin(i + width / 5, random(200, islandHeight)));
  }
  world = new World(player, isls, coins);
  score = new Score();
}

void draw(){
  background(130, 190, 255);
  if(gameState == GameState.PLAYING){
    world.draw();
    score.draw();
  }else if(gameState == GameState.MENU){
     menu.draw();  
  }
  drawInitial();
}

void keyPressed(){
  keyboard.put(key, true);
}

void keyReleased(){
  keyboard.put(key, false);
}
