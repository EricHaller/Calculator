public class CalcModel {

  private ArrayList<CalcButton> buttons = new ArrayList<>();

  public CalcModel() {

    for (float i = 0; i < 3; i++) {
      for (float j = 0; j < 4; j++) {
        buttons.add(
          new CalcButton(125 + (55 * i), 250 + (55 * j), 50, 50, 125 + (55 * i + 25), 250 + (55 * j + 30), "1")
          );
      }
    }
  }

  public ArrayList<CalcButton> getButtons() {
    return buttons;
  }
  
  public void unselect(){
    for (CalcButton b : buttons) {
      b.unselect();
      }
  
  }

  public void handleClicked(float mX, float mY) {
    for (CalcButton b : buttons) {
      if (mX > b.getButtonX() && mX < b.getButtonX() + b.getButtonW()
        && mY > b.getButtonY() && mY < b.getButtonY() + b.getButtonH()) {
        b.select();
      }
    }
  }
}
