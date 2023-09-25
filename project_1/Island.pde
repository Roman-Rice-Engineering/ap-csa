class Island{
 public float x_pos;
 public float y_pos;
 private PImage sprite;
 
 public Island(float x, float y){
  this.x_pos = x;
  this.y_pos = y;
  this.sprite = loadImage("island.png");
 }
 
 public void draw(float xBase){
   float x_pos = this.x_pos - xBase;
   float y_pos = this.y_pos;
  image(sprite, x_pos, y_pos);
  strokeWeight(4);
  rectMode(CENTER);
  fill(128, 130, 86);
  rect(x_pos+200, y_pos+40, 200, 120);
  fill(80, 80, 80);
  rect(x_pos+260, y_pos - 90, 50, 100);
  fill(184, 71, 40);
  x_pos -= 30;
  y_pos -= 320;
  triangle(x_pos + 120, y_pos + 300, x_pos + 232, y_pos + 180, x_pos + 344, y_pos + 300);
 }
}
