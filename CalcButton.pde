public class CalcButton {

  private float X, Y, W, H, textX, textY;
  private String txt;
  private boolean selected = false;

  public CalcButton(float X, float Y, float W, float H, float textX, float textY, String txt) {
    this.X = X;
    this.Y = Y;
    this.W = W;
    this.H = H;
    this.textX = textX;
    this.textY = textY;
    this.txt = txt;
  }

  public float getButtonX() {
    return X;
  }
  public  float getButtonY() {
    return Y;
  }
  public float getButtonW() {
    return W;
  }
  public float getButtonH() {
    return H;
  }
  public float getButtonTextX() {
    return textX;
  }
  public float getButtonTextY() {
    return textY;
  }
  public String getButtonText() {
    return txt;
  }
  public boolean getSelected(){
  return selected;}
  public void select(){selected = true;}
  public void unselect(){selected = false;}
}
