float[] posXCubes = new float[50];
float[] posYCubes = new float[50];
int[] randomNums;
void setup () {
  size(800, 800);
  randomNums = new int[] {50, width - 50, 50, height - 50};
}
void draw () {
  background(0);
  moveBlocks(posXCubes, posYCubes);
  drawCubes(posXCubes, posYCubes);
}
void moveBlocks (float[] PosX, float[] PosY) {
  if (PosX[0] == 0) {
    for (int i = 0; i <= (PosX.length - 1); i++) {
          PosX[i] = random(randomNums[0], randomNums[1]);
    }
    for (int i = 0; i <= (PosY.length - 1); i++) {
          PosY[i] = random(randomNums[2], randomNums[3]);
    }
  } else {
    for (int i = 0; i <= (PosX.length - 1); i++) {
          PosX[i] += random(-3, 3);
    }
    for (int i = 0; i <= (PosY.length - 1); i++) {
          PosY[i] += random(-3, 3);
    }
  }
}

void drawCubes (float[] PosX, float[] PosY) {
  for (int i = 0; i <= (PosX.length - 1); i++) {
    rect(PosX[i],PosY[i],50,50);
  }
}