import processing.serial.*;
import cc.arduino.*;
import org.firmata.*;
Arduino arduino;
int sensor = 0;
int[] data;
int i = 1;

void setup()
{
  printArray(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[2], 57600);
  //fullScreen();
  size(1000, 500);
  background(102);  
  arduino.pinMode(sensor,Arduino.INPUT);
  data = new int[width];
}
void draw()
{
  //println(height);
  stroke(255);
  int raw = arduino.analogRead(sensor);
  //println(raw);
  float filter = map(raw, 350, 450, 0, height);
  data [i] = (int)filter;
  data[0] = data[1];
  //println(data[i]);
  line(i-1, height - data[i-1], i, height - data[i]);
  i++;
  if(i == width)
  {
    background(102);
    i = 1;
  }
}
