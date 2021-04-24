PFont FGBRegular;
PImage starWarsPng;
int widthForDecrease = 700,
    heightForDecrease = 350,
    scrollText = 200;

/* Palette */
color lightBlue = color(75, 213, 238),
      brightOrange = color(255,225,24);

/* Strings */
String textALongTimeAgo = "A long time ago, in a galaxy far, far away...",
       textCrawlBody = "                Episode IV\nA NEW HOPE\n\nIt is a period of civil war. Rebel spaceships, striking from a hidden base, have won their first victory against the evil Galactic Empire. During the battle, Rebel spies managed to steal secret plans to the Empire’s ultimate weapon, the DEATH STAR, an armored space station with enough power to destroy an entire planet.\n\nPursued by the Empire’s sinister agents, Princess Leia races home aboard her starship, custodian of the stolen plans that can save her people and restore freedom to the galaxy….";

/* Time Flags */
int threeSec = 3000,
    fiveSec = 5000,
    tenSec = 10000,
    elevenSec = 11000,
    twelveSec = 12000,
    thirteenSec = 13000,
    fourteenSec = 14000,
    fifteenSec = 15000,
    seventeenSec = 17000,
    nineteenSec = 19000;

void setup() {
  size(700, 350, P3D);
  noStroke();
  background(0);
  /* Fonts */
  FGBRegular = createFont("Franklin Gothic Book", 92); // "A long time ago" font
  // SWCrawlBody = createFont("SW Crawl Body", 151); // Body font
  // SWCrawlTitle = createFont("SW Crawl Text", 152); // Title font
  starWarsPng = loadImage("logo_scaled.png"); // "Star Wars" as an image
}

void draw() {
  background(0);
  if(millis() > fiveSec && millis() < tenSec) { // Fade in "A long time ago"
     /* === PART - A long time ago === */
     textFont(FGBRegular);
     textSize(36);
     fill(lightBlue);
     text(textALongTimeAgo, 120, 120, 500, 200);
  } else if(millis() > tenSec && millis() < elevenSec) { // Fade out "A lont time ago"
      
  } else if(millis() > elevenSec && millis() < seventeenSec) { // Logo comes in
    /* === PART Star Wars Logo === */
      // fill(255); // Stars
      // ellipse(random(width), random(height), 3, 3); // In the sky
      imageMode(CENTER);
      image(starWarsPng, width/2, height/2, widthForDecrease, heightForDecrease);
      if(widthForDecrease > 0) {
          widthForDecrease -= 2;
          heightForDecrease -= 1;
      }
      if(widthForDecrease < 200) {
          tint(150);
      } else if(widthForDecrease < 175) {
          tint(75); 
      } else if(widthForDecrease < 150) {
          tint(25); 
      }
  } else if(millis() > twelveSec) { // Text Sliding up
    /* === PART Sliding Text === */
      // fill(255); // Stars
      // ellipse(random(width), random(height), 3, 3); // In the sky
      fill(brightOrange);
      textSize(20);
      rotateX(0.86);
      textMode(SHAPE);
      translate(0,scrollText);
      text(textCrawlBody, (width/5)*2, height/3, width/5, height);
      scrollText -= 1;
  }
  // println(mouseX + " : " + mouseY); // Log pointer's location
  
  
}