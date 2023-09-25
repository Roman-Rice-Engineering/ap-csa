public class World{
  private Player player;
  private ArrayList<Island> islands = new ArrayList<Island>();
  private Boolean playerIsGrounded = false;
  
  private float xBasePosition = 0;
  
  public World(Player player, ArrayList<Island> islands){
      this.player = player;
      this.islands = islands;
  }
  
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
    if(player.x_pos - width/2 < xBasePosition - 500){
     xBasePosition -= player.playerSpeed; 
    }else if(player.x_pos - width/2 > xBasePosition + 500){
      xBasePosition += player.playerSpeed; 
    }
    
    for(Island isl : islands){
      isl.draw(xBasePosition); 
    }
    player.draw(this.playerIsGrounded(), xBasePosition);
  }
  
}
