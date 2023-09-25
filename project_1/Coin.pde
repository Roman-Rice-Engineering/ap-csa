public class Coin{
  public static final float radius = 75;
  
  public float x_pos;
  public float y_pos;
  
  public Coin(float x, float y){
   this.x_pos = x;
   this.y_pos = y;
  }
  
  public void draw(float xBase){
    float x_pos = this.x_pos - xBase;
    strokeWeight(6);
    fill(232, 215, 107);
    ellipse(x_pos, y_pos, radius, radius); 
    strokeWeight(3);
    fill(140, 120, 100);
    rectMode(CENTER);
    rect(x_pos, y_pos, 12, 40);
  }
  
}
