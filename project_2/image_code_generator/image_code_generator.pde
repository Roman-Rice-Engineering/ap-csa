int oldX, oldY;
ArrayList<DrawingStroke> strokes = new ArrayList();

void setup(){
  background(255);
  size(1280, 720);
  frameRate(60);
}

void draw(){
  if(mouseButton == LEFT){
    DrawingStroke latestStroke = new DrawingStroke(mouseX, mouseY, oldX, oldY, 20, color(0, 0, 0));
    latestStroke.show();
    if(strokes.size() == 0 || !latestStroke.equals(strokes.get(strokes.size() - 1)))
      strokes.add(latestStroke);
  }
  oldX = mouseX;
  oldY = mouseY;
}


void keyPressed(){
  if(key == 'w'){
    createImageFile(strokes);
  }
}

void createImageFile(ArrayList<DrawingStroke> strks){
  String name = "GENERATED_IMAGE_" + hex(strks.hashCode());
  System.out.println("Generated image: " + name);
  PrintWriter writer = createWriter("generated/" + name + ".pde");
  writer.write("void " + name + "(int xOffset, int yOffset, float scale){\n\tnoStroke();\n\trectMode(CENTER);\n\ttranslate(xOffset, yOffset);\n");
  for(DrawingStroke ele : strks){
    writer.write("\tpushMatrix();\n");
    writer.write("\tfill(" + ele.col + ");\n");
    writer.write("\ttranslate(((" + ele.mX + " * scale) + (" + ele.oX + " * scale)) / 2, ((" + ele.mY + " * scale) + (" + ele.oY + " * scale)) / 2);\n");
    writer.write("\trotate(" + (ele.mX - ele.oX != 0 ? "atan2((" + ele.mY + ") - (" + ele.oY + "), (" + ele.mX + ") - (" + ele.oX + "))" : "HALF_PI") + ");\n");
    writer.write("\trect(0, 0, (" + ele.size + " * scale) + sqrt(pow((" + ele.mX + " * scale) - (" + ele.oX + " * scale), 2) + pow((" + ele.mY + " * scale) - (" + ele.oY + " * scale), 2)), (" + ele.size + " * scale), (" + ele.size + " * scale));\n");
    writer.write("\tpopMatrix();\n");  
}
  writer.write("}");
  writer.flush();
  writer.close();
}
