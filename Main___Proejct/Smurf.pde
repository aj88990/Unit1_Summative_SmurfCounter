class Smurf {

  float x;
  float y;
  float Height;
  float Width;
  float angle;

  Smurf() {
    x = random(width);
    y = random(height);
    Height = random(50, 100);
    Width = random(50, 100);
  }

  void display() {
    image(smurf, x, y, Height, Width);
  }
}
