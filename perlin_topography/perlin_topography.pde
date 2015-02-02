import org.philhosoft.p8g.svg.*;

void setup() {
  size(1000, 500);
  background(255);
  beginRecord(P8gGraphicsSVG.SVG, "test.svg");

  float noiseFactor = 0.01;
  float red = 222; 
  float green = 190; 
  float blue = 103;

  for (int i = 0; i<height; i+=5) {
    fill(red, green, blue, 100);
    beginShape();
    for (int j = 0; j<width; j++) {
      vertex(j, i + noise(noiseFactor) * 40);
      noiseFactor = noiseFactor + 0.05;
    }
    endShape();
    green = green - 1;
  }
  endRecord();
}

