PImage venus, cloud1, cloud2;
PImage ad1, ad2, ad3, ad4, ad5, ad6, ad7;
float x1, y1, x2, y2; // X and Y coordinates img


void setup() {
  size(800, 460);
  
  // Load images in
  venus = loadImage("Venus.jpg");
  cloud1 = loadImage("cloud1.png");
  cloud2 = loadImage("cloud2.png");
  ad1 = loadImage("ad1.jpg");
  ad2 = loadImage("ad2.jpg");
  ad3 = loadImage("ad3.jpg");
  ad4 = loadImage("ad4.jpg");
  ad5 = loadImage("ad5.jpg");
  ad6 = loadImage("ad6.jpg");
  ad7 = loadImage("ad7.jpg");
  
  x1 = 50; // x and y of clouds
  y1 = 50;
  x2 = 150;
  y2 = 230;
}

void draw() {
  background(venus);
  
  cloud1.resize(0, 360);
  image(cloud1, x1, y1);
  
  cloud2.resize(0, 200);
  image(cloud2, x2, y2);
  
  // Setting up button
  rect(620, 30, 130, 40);
  fill(0);
  
  text("NUDE GIRLS!!", 628, 58);
  textSize(14);
  fill(200,0,0);
  
  text("CLICK HERE", 638, 90);
  textSize(18);
  
  // If mouse pressed, change the position of clouds
  if (mousePressed == true) {
    x1 += random(-10, 10);
    y1 += random(-10, 10);
    x2 += random(-10, 10);
    y2 += random(-10, 10);
  }
  
  // On click, flash ads
  if (mousePressed == true && mouseX < 750 && mouseY < 70 
    && mouseX > 620 && mouseY > 30) {
    rect(620, 30, 130, 40);
    //fill(0,0,0, 50);
      
    ad1.resize(0, 100);
    image(ad1, random(0,800), random(0,400));
    
    ad2.resize(0, 80);
    image(ad2, random(0,800), random(0,400));
    
    ad3.resize(0, 120);
    image(ad3, random(0,800), random(0,400));
    
    ad4.resize(0, 150);
    image(ad4, 550, 200);
    
    ad5.resize(0, 120);
    image(ad5, 200, 360);
    
    ad6.resize(0, 140);
    image(ad6, 100, 40);
    
    ad7.resize(0,130);
    image(ad7, 360, 110);
  }

}
