public class World{
  private Player player;
  private ArrayList<Island> islands = new ArrayList<Island>();
  private ArrayList<Coin> coins = new ArrayList<Coin>();
  private Boolean playerIsGrounded = false;
  
  // This is a variable which holds how much offset
  // everything in the world should have,
  // storing this offset allows for camera to follow
  // the player.
  private float xBasePosition = 0;
  
  public World(Player player, ArrayList<Island> islands, ArrayList<Coin> coins){
      this.player = player;
      this.islands = islands;
      this.coins = coins;
  }
  
  // Short function to check if the base of the
  // player character collides with an island
  private Boolean playerIsGrounded(){
    for(Island isl : islands){
      if(
      isl.y_pos < player.y_pos - 100 &&
      isl.y_pos + 50 > player.y_pos - 100 &&
      player.x_pos > isl.x_pos &&
      player.x_pos < isl.x_pos +360
      ){
         return true; 
      }
    }
    return false; 
  }
  
  public void draw(){
    if(player.y_pos > height + 500){
      gameState = GameState.MENU; 
    }
    
    if(player.x_pos - width/2 < xBasePosition - 500){
     xBasePosition -= player.playerSpeed; 
    }else if(player.x_pos - width/2 > xBasePosition + 500){
      xBasePosition += player.playerSpeed; 
    }
    
    for(Island isl : islands){
      isl.draw(xBasePosition); 
    }
    for(int i = 0; i < coins.size(); i++){
     Coin cn = coins.get(i);
     cn.draw(xBasePosition); 
     
     //Detect Collision with coin
     if(
     player.x_pos > cn.x_pos - cn.radius &&
     player.x_pos < cn.x_pos + cn.radius &&
     player.y_pos > cn.y_pos - cn.radius &&
     player.y_pos < cn.y_pos + cn.radius
     ){
       coins.remove(i);
       score.score++;
     }
    }
    
    player.draw(this.playerIsGrounded(), xBasePosition);
  }
  
}
