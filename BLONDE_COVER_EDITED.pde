
PImage blonde;
PImage tear; 

float ax = 315;
float ay = 450 ;
float av = 3;

float bx = 315;
float by = 450 ;
float bv = 4.5;

String message = "SELF CONTROL";
float x = 334;
float y = 100; // X and Y coordinates of text
float hr = 10;
float vr = 10;  // horizontal and vertical radius of the text

import processing.sound.*;
SoundFile song;



void setup() {
  size(667, 1000); // image is 667 x 1000 pixels.
  blonde = loadImage("Blonde.jpegg.jpeg");
  tear = loadImage("tear.png");
  
  // Create the font
  textFont(createFont("Superclarendon-BoldItalic", 40));
  textAlign(CENTER, CENTER);
  
    hr = textWidth(message) / 2;
  vr = (textAscent() + textDescent()) / 2;
  noStroke();
  x = width / 2;
  y = height / 9;
  
   //this loads the file based on the file name
  song = new SoundFile(this,"FRANK.mp3");
  song.cue(83);
  song.play();
  
}

void draw() {
  background(blonde); 
    tear.resize(40, 60);
    
  
  // If the cursor is over the text, change the position
  if (abs(mouseX - x) < hr &&
      abs(mouseY - y) < vr) {
    x += random(-5, 5);
    y += random(-5, 5);
  }
  fill(200);
  text("SELF CONTROL", x, y);
  
  {  
     ay = ay + av;
  image(tear, ax, ay);
  if (ay > 1000) {
    ax = 315;
    ay = 450;
    av = random(2, 5);
  }    
      by = by + bv;
  image(tear, bx, by);
  if (by > 1000) {
    bx = 315;
    by = 450;
    bv = random(2, 5);
    
}
  }}
