public class DrawingStroke{
  int mX, mY, oX, oY, size;
  color col;
  
  DrawingStroke(int mX, int mY, int oX, int oY, int size, color col){
   this.mX = mX;
   this.mY = mY;
   this.oX = oX;
   this.oY = oY;
   this.size = size;
   this.col = col;
  }
  
  boolean equals(DrawingStroke other){
    return other.mX == this.mX &&
           other.mY == this.mY &&
           other.oX == this.oX &&
           other.oY == this.oY &&
           other.size == this.size &&
           other.col == this.col;
  }
  
  String toString(){
    String toRet = "\n{";
    toRet += mX + ", ";
    toRet += mY + ", ";
    toRet += oX + ", ";
    toRet += oY + ", ";
    toRet += size + ", ";
    toRet += col;
    toRet += "}";
    return toRet;
  }
  
  void show(){
    noStroke();
    fill(col);
    rectMode(CENTER);
  
    // Calculations to ensure that while drawing and
    // moving cursor fast, skipping does not occur
    translate((mX + oX) / 2, (mY + oY) / 2);  
    rotate((mX - oX != 0) ? atan2(mY - oY, mX - oX) : HALF_PI);
    
    rect(0, 0, size + sqrt(pow(mX - oX, 2) + pow(mY - oY, 2)), size, size);
  }
}
