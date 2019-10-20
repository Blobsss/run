int level = 0;
int enemySpawned = 0;
boolean won = false;

// det er et nested array 

int levels[][] = {
{10,2000,3000}
};

void setupLevel() {
  enemySpawned = 0;
}

void drawLevel() {
  if(won == false) {
    spawnTime();
  
  } 
}

  /* vi sætter tiden der skal gå for at spawne vores enemy */
void spawnTime() {
  if(spawnTime < millis()) {
    println(level+", "+levels[level][0]+"/"+enemySpawned);
    
    if (levels[level][0] > enemySpawned) {
      spawnEnemy();
      enemySpawned++;
    }
    spawnTime = millis()+int(random(levels[level][1],levels[level][2]));
  }
}
