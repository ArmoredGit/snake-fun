public class Knight{
  private int _Size;
  private int _X;
  private int _Y;
  private int _aclX;
  private int _aclY;
  
  public Knight(int x, int y){
    _Size = 15;
    _X = x;
    _Y = y;
    _aclX = 0;
    _aclY = 0;
  }
  
  //accelerate character
  public void accelerate(){
    _X += _aclX;
    if(_aclX != 0)
      _aclX += ((_aclX > 0)?-2:2);
    if(_X < 0)
      _X = width;
    if(_X > width)
      _X = 0;
    jump();
  }
  public void jump(){
    _Y -= _aclY;
    _aclY -= 2;
    if(_aclY < -50)
      _aclY= -50;
    if(_Y < height/(2*_Size))
      _Y = height/(2*_Size);
    if(_Y > (3 * height / 4) - height/(2*_Size)){
      _Y = (3 * height / 4) - height/(2*_Size);
      _aclY = 0;
    }
  }
  //draw character
  public void drawHero(){
    ellipse(_X, _Y, width / _Size, height / _Size);
  }
  //get character def hitboxes
  
  //get attack hit boxes
  
  //add aceleration
  public void addAccel(int aclX, int aclY){
    _aclX += aclX;
    if(aclY > 0)
      _aclY = 0;
    _aclY += aclY;
    if(_aclX > 30)
      _aclX= 30;
    if(_aclX < -30)
      _aclX= -30;
    if(_aclY < -50)
      _aclY= -50;
  }
}
