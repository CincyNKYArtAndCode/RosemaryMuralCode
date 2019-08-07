float a;
float c;
boolean cont = true;
int[] array = {#05d6dc, #c9a54a, #e52448, #628054, #f76baf, #8bd9c7, #d6b3cf, #cdac4a};
int b = 0;
PImage img;
PImage img2;

void setup() {
  size(displayWidth, displayHeight);
  a = height/2;
  c = 0;
  img = loadImage("Rosemary_TRANS.png");
}

void draw() {
  imageMode(CENTER);
  image(img,width/2,height/2,950*2, 839*2);
  noFill();
  strokeWeight(10.0);
  stroke(array[b]);
  b++;
  if(b > array.length-1)
  {
    b = 0;
  }
  strokeJoin(MITER);
  beginShape();
  for(int i = 0; i < width; i+=20)
  {
    vertex(c, a);
    c+=20;
    vertex(c,a+20);
    c+=20;
  }
  
  a = a - 14;
  if (a < -50) 
  { 
    a = height; 
  }
  if (c > width) 
  { 
    c = 0; 
  }
  delay(120);
  endShape();
}
