void setup(){
  size(600, 600);
  frameRate(60);
  setupEnemy();
  setupLevel();

}

void draw() {
  background(64);
  drawEnemy();
  drawLevel();
  fill(0,255,0);
}
