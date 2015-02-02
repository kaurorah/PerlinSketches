void setup() {
  size(1000, 500);
  background(255);
  float noiseFactor = 0.01;
   for(int i = 0; i<height; i++){
     for(int j = 0; j<width; j++){
      
      point(j, i + noise(noiseFactor)*100);
      noiseFactor = noiseFactor + 0.05;
    }
   }
}

