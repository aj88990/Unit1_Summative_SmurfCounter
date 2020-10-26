class Timer
{
  float Time;

  Timer(float set) {
    Time = set;
  }
  float getTime() { //returns current time
    return(Time);
  }

  void setTime(float set) 
  {
    Time = set;
  }

  void countUp() { //update the timer by counting up. called withing void draw
    Time += 1/frameRate ;
  } 
  void countDown() {
    Time -= 1/frameRate;
  }
}
