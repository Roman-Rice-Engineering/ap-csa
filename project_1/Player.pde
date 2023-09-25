public class Player{
   private static final float playerHeight = 100;
   private static final float playerWidth= 40;
   private static final float playerSpeed = 10;
   private static final float playerJumpPower = 30;
   
   public float x_pos;
   public float y_pos;
   public float x_velocity;
   public float y_velocity;
   
   public Player(int x, int y){
     this.x_pos = x;
     this.y_pos = y;
     this.x_velocity = 0;
     this.y_velocity = 0;
   }
   
   private Boolean isGrounded(){
      if(this.y_pos >= height - playerHeight/2){
        return true; 
      }else{
        return false; 
      }
   }
   
   public void handleControl(){
     if(keyboard.isPressed('a') || keyboard.isPressed('A')){
       this.x_velocity = -this.playerSpeed;
     }else if (keyboard.isPressed('d') || keyboard.isPressed('D')){
       this.x_velocity = this.playerSpeed; 
     }else{
       this.x_velocity = 0; 
     }
     
     if(keyboard.isPressed(' ') && this.isGrounded()){
       this.y_velocity = -this.playerJumpPower; 
     }
   }
   
   public void calculatePhysics(){
       y_velocity += GRAVITY;
       if(this.isGrounded() && y_velocity > 0){
         y_velocity = 0; 
       }
       
       x_pos += x_velocity;
       y_pos += y_velocity;
   }
   
   public void render(){
     rectMode(CENTER);
     rect(x_pos, y_pos-playerHeight/2, playerWidth, playerHeight); 
   }
   
   public void draw(){
     this.handleControl();
     this.calculatePhysics();
     this.render();
   }  
}
