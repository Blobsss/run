ArrayList<Enemy> enemys;
int enemyHealth = 2;
int spawnTime = 1000;

void setupEnemy(){
  enemys = new ArrayList<Enemy>();
}

void drawEnemy(){
  /* vi tilføjer vores enemies */
 for(int i = 0; i < enemys.size(); i++) {
   enemys.get(i).update(i);
 }
}


  /* vi sætter de rammer for hvor enemies må spawne */
void spawnEnemy() {
  switch(int(random(0,4))) {
    case 0:
       enemys.add(new Enemy(int(random(0,width)),0,enemyHealth));
    break;
    
    case 1:
      enemys.add(new Enemy(width,int(random(0,height)),enemyHealth));
    break;
      
    case 2:
      enemys.add(new Enemy(int(random(0,width)),height,enemyHealth));
    break;
    
    case 3:
      enemys.add(new Enemy(0,int(random(0,height)),enemyHealth));
    break;
  }
}

/* Vi sætter enemies liv og deres hastighed */
class Enemy{
  PVector location;
  PVector velocity;
  int health;
  
  Enemy(int tempX, int tempY, int tempHealth) {
    location = new PVector(tempX, tempY);
    velocity = new PVector(random(1, 3),random(1, 3));
    health = tempHealth;
  }
  
  /* vi opdaterer information */
  void update(int i) {
    move();
    display();
  }
  
  /* vi sætter bounce på så vores enemy bouncer på vægene */
  void move() {
    location.add(velocity);
 
   if (location.x > width) {
     velocity.x = velocity.x * -1;
   }
   if (location.y > height) {
      velocity.y = velocity.y * -1; 
      location.y = height;
    }
    
    if (location.y < 0) {
      velocity.y = velocity.y * -1;
      location.y = 0;
    }
    
    if (location.x < 0) {
      velocity.x = velocity.x * -1;
      location.x = 0;
    }
  }  
  
  /* vi displayer størrelsen af vores enemy */
  void display() {
    fill(255, 255, 255);
    ellipse(location.x,location.y,30,30);
    }
  
}
