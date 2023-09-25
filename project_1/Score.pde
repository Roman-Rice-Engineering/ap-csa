public class Score{
 public int score = 0;
 
 public void draw(){
      fill(255, 250, 117);
      rectMode(CENTER);
      rect(250, 54, 400, 100);
      textSize(64);
      textAlign(CENTER);
      fill(0, 0, 0);
      text("Your Score: " + score, 250, 75); 
 }
}
