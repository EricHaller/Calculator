// Calculator applicatation 

CalcModel model = new CalcModel();
void setup() {
  size(400, 500);
}


void mousePressed(){
  model.handleClicked(mouseX, mouseY);
}

void mouseReleased(){
  model.unselect();
}

private void drawIcons(){
  for (CalcButton b : model.getButtons()){
    if (b.getSelected()) {
      fill(0,200,0);
    }else fill(255,255,255);
    
    square(b.getButtonX(), b.getButtonY(), b.getButtonW());
    
    textAlign(CENTER);
    fill(0, 0, 0);
    text(b.getButtonText(), b.getButtonTextX(), b.getButtonTextY());
    fill(255, 255, 255);
    
  }
}

void draw() {
  background(153);
  drawIcons();
  
}
