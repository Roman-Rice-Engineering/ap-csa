public enum GameState {
  MENU,
  PLAYING,
}

public class Menu{
  
  public void draw(){
    
      fill(225, 120, 49);
      strokeWeight(8);
      rectMode(CENTER);
      rect(width/2, height/2, 700, 800);
      
      fill(0, 0, 0);
      textAlign(CENTER);
      textSize(64);
      text("RANDOM GAME", width/2, height/2 - 200);
      textSize(32);
      text("Press 'SPACE' to begin.", width/2, height/2);
      
     if(keyboard.isPressed(' ')){
      setup();
      gameState = GameState.PLAYING; 
     }
  }
}
