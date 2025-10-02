class Gif {
  //instance variables
  PImage[] gif;
  String before, after;
  int numFrames, speed;
  int x, y, w, h;
  int f;

  boolean specificSize;


  Gif (String b, String a, int n, int s, int _x, int _y) {
    before = b;
    after = a;
    numFrames = n;
    speed = s;
    x = _x;
    y = _y;
    f = 0;

    gif = new PImage[numFrames];
    specificSize = false;

    int i = 0;
    while (i < numFrames) {
      gif[i] = loadImage(before + i + after);
      i++;
    }
  }
  Gif(String b, String a, int n, int s, int _x, int _y, int _w, int _h) {
    before = b;
    after = a;
    numFrames = n;
    speed = s;
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    f = 0;

    specificSize = true;

    gif = new PImage[numFrames];

    int i = 0;
    while (i < numFrames) {
      gif[i] = loadImage(before + i + after);
      i++;
    }
  }

  void show() {
    if (specificSize) image(gif[f], x, y, w, h);
    else {
      image(gif[f], x, y);
    }
    if (frameCount % speed == 0) f++;
    if (f == numFrames) f = 0;
  }
}
