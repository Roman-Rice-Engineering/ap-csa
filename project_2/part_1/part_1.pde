void setup(){
 size(1280, 720);
 background(255);
 frameRate(1);
}

void draw(){
  background(255);
  draw20InstancesOfObject();
}

void draw20InstancesOfObject(){
  for(int i = 0; i < 20; i++){
    pushMatrix();
  GENERATED_IMAGE_57D268DC_MONOCHROME((int)(Math.random()*1000), (int)(Math.random()*400), 0.1 + (float)Math.random() * 0.4, color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));
  popMatrix();
  }
}
