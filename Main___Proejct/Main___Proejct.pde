Button resetbutton;
Timer startTimer;
PImage smurf;
int scene = 0;
Smurf[] smurfs = new Smurf[100];



void setup() {
  size(1080, 780);
  resetbutton = new Button(width/2, height/2, 100, 50, "Start Here", 255, 255, 0);
  smurf = loadImage("smurf.png");
  for (int i = 0; i<100; i++) {
    smurfs[i] = new Smurf();
    startTimer = new Timer(10);
  }
}

void draw () {

  if ( scene == 1)
  {
    background(255, 150, 100);
    for (int i = 0; i<100; i++) {
      smurfs[i].display();
    }
    startTimer.countDown();
    text(startTimer.getTime(), 100, 100);
  } 
  
  else if (scene==2)
  {
    background(random(255),random(255),random(255));
  }
  
  else  {
    background(255);
    resetbutton.update();
    resetbutton.render();
  }

  if (resetbutton.isClicked()) {
    scene = 1;
  }
  if(startTimer.getTime()<0){
    scene = 2;
  }
}
