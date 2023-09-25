public class KeypressHandler{
  private byte[] keyboard = new byte[32];
  
  public Boolean isPressed(char index){
    // If char is greater than the max value of a byte and thus
    // cannot possibly be ascii, return false.
    if(index > 255 || index < 0){
     return false; 
    }
    return (this.keyboard[index & 0b00011111] & (1 << (index >> 5))) != 0;
  }
  
  public void put(char index, Boolean value){
    // If char is greater than the max value of a byte and thus
    // cannot possibly be ascii, return and change nothing.
    if(index > 255 || index < 0){
     return; 
    }
    if(value == true){
      this.keyboard[index & 0b00011111] |= (1 << (index >> 5));
    }else{
      this.keyboard[index & 0b00011111] &= ~(1 << (index >> 5));
    }
  }
}
