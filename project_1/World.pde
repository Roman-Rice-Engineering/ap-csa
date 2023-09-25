public class World{
  private Player player;
  private ArrayList<Island> islands = new ArrayList<Island>();
  private Boolean playerIsGrounded = false;
  
  public World(Player player, ArrayList<Island> islands){
      this.player = player;
      this.islands = islands;
  }
  
  public void draw(){
    for(Island isl : islands){
      isl.draw(); 
    }
    player.draw();
  }
  
}
