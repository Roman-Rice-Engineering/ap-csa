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
   
   public void handleControl(Boolean isGrounded){
     if(keyboard.isPressed('a') || keyboard.isPressed('A')){
       this.x_velocity = -this.playerSpeed;
     }else if (keyboard.isPressed('d') || keyboard.isPressed('D')){
       this.x_velocity = this.playerSpeed; 
     }else{
       this.x_velocity = 0; 
     }
     
     if(keyboard.isPressed(' ') && isGrounded){
       this.y_velocity = -this.playerJumpPower; 
     }
   }
   
   public void calculatePhysics(Boolean isGrounded){
       y_velocity += GRAVITY;
       if(isGrounded && y_velocity > 0){
         y_velocity = 0; 
       }
       
       x_pos += x_velocity;
       y_pos += y_velocity;
   }
   
   public void render(float x_base){
     float x_pos = this.x_pos - x_base;
     strokeWeight(3);
     fill(100, 100, 100);
     rectMode(CENTER);
     rect(x_pos, y_pos-playerHeight/2, playerWidth, playerHeight); 
   }
   
   public void draw(Boolean isGrounded, float x_base){
     this.handleControl(isGrounded);
     this.calculatePhysics(isGrounded);
     this.render(x_base);
   }  
}
