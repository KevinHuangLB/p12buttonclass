class Button {
  // instance variables
  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  PImage image;
  boolean isImage;

  Button(String t, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
    isImage = false;
  }

  Button(PImage i, int _x, int _y, int _w, int _h, color norm, color high) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    image = i;
    highlight = high;
    normal = norm;
    clicked = false;
    isImage = true;
  }

  void show() {
    drawRect();
    drawLabel();
    checkForClick();
  }

  //behaviour functions
  boolean touchingMouse() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y + h/2) {
      return true;
    }
    return false;
  }

  //drawing functions
  void drawRect() {
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    if (touchingMouse()) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }

  void drawLabel() {
    textAlign(CENTER, CENTER);
    if (touchingMouse()) {
      fill(normal);
    } else {
      fill(highlight);
    }
    textSize(w/4);

    if (isImage) {
      image(dog, x - w/4, y - h/3, w/3, w/3);
    } else {
      text(text, x, y);
    }
  }

  void checkForClick() {
    if (mouseReleased && touchingMouse()) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
