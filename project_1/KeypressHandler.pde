public class KeypressHandler{
  private byte[] keyboard = new byte[32];
  
  public Boolean isPressed(char index){
    // If char is greater than the max value of a byte and thus
    // cannot possibly be ascii, return false.
    if(index > 255 || index < 0){
     return false; 
    }
    
    // Bit manipulation to find the correct bit in the correct index byte
    // and read its value, 1 or 0 to a Boolean via a bitmask.
    return (this.keyboard[index & 0b00011111] & (1 << (index >> 5))) != 0;
  }
  
  public void put(char index, Boolean value){
    // If char is greater than the max value of a byte and thus
    // cannot possibly be ascii, return and change nothing.
    if(index > 255 || index < 0){
     return; 
    }
    
    // Bit manipulation to turn a byte into an index into the array
    // and bitmap of the byte at that index to determine
    // where to set or clear a bit
    if(value == true){
      this.keyboard[index & 0b00011111] |= (1 << (index >> 5));
    }else{
      this.keyboard[index & 0b00011111] &= ~(1 << (index >> 5));
    }
  }
}
