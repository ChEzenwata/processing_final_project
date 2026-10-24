//Variables:
PImage cat;

boolean insideTitle = true;

void setup() {
  size(600, 450);
  textAlign(CENTER, CENTER);

  cat = loadImage("cute-cat.png");
}

void draw() {
  background(255, 230, 240);

  // Star decorations
  textSize(30);
  fill(255, 180, 80);
  text("*", 70, 70);
  text("*", 500, 80);
  text("*", 100, 140);
  text("*", 520, 190);
  text("*", 75, 240);
  text("*", 510, 280);
  text("*", 140, 330);
  text("*", 460, 340);
  text("*", 170, 90);
  text("*", 430, 100);
  text("*", 90, 380);
  text("*", 500, 390);

  // Pink stars
  fill(255, 100, 170);
  textSize(27);
  text("*", 150, 160);
  text("*", 450, 160);
  text("*", 160, 280);
  text("*", 440, 300);

  // Purple stars
  fill(170, 100, 220);
  textSize(30);
  text("*", 110, 200);
  text("*", 490, 230);

  // Small hearts
  fill(255, 100, 150);
  text("<3", 130, 190);
  text("<3", 470, 210);

  if (insideTitle == true) {
    // Title screen
    fill(120, 60, 100);
    textSize(36);
    text("Luna's Little Life", 300, 65);

    textSize(18);
    fill(80, 60, 80);
    text("A little love, a little magic!", 300, 105);

    // Cat picture
    image(cat, 200, 125, 200, 200);

    // Start button
    fill(150, 100, 200);
    //    x    y    w    h   rounded corner
    rect(225, 350, 150, 55, 15);

    fill(255);
    textSize(22);
    text("*START*", 300, 378);
  }
}

void mousePressed() {
  if (insideTitle == true) {
    if (mouseX > 225 && mouseX < 375 &&
      mouseY > 350 && mouseY < 405) {
      insideTitle = false;
    }
  }
}
