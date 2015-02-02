import org.philhosoft.p8g.svg.*;

void setup() {
  size(800, 500);
  background(255);
  //beginRecord(P8gGraphicsSVG.SVG, "b_w_perlin.svg");

  float noiseFactor = 1;
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
  //endRecord();
}

