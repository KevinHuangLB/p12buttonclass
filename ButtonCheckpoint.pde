Button blueButton;
Button blackButton;
Button greenButton;
Button pinkButton;

color red = #FF0000;
color blue = #28E7ED;
color green = #CEF255;
color pink = #F76DDC;
color yellow = #FFF387;
color black = #000000;
color white = #FFFFFF;

boolean mouseReleased;
boolean wasPressed;

PImage dog;

void setup() {
  size(600, 600);

  dog = loadImage("dog.png");
  

  blueButton = new Button("BLUE", 150, 150, 150, 100, pink, blue);
  greenButton = new Button("GREEN", 150, 300, 150, 100, yellow, green);
  blackButton = new Button("BLACK", 400, 200, 200, 200, black, white);
  pinkButton = new Button(dog, 300, 450, 400, 150, pink, blue);

}
void draw() {
  click();
  blueButton.show();
  blackButton.show();
  greenButton.show();
  pinkButton.show();



  if (blueButton.clicked) background(blue);
  if (greenButton.clicked) background(green);
  if (blackButton.clicked) background(black);
  if (pinkButton.clicked) background(pink);
}
