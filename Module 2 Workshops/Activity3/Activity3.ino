pinBTN = 4;
pinLED = 10;

void setup() {
  pinMode(pinBTN, INPUT);
  pinMode(pinLED, OUTPUT);
  digitalWrite(pinLED, LOW);
}

void loop() {
  // if the button is pressed 
  if (digitalRead(pinBTN)== HIGH)
  {
    digitalWrite(pinLED, HIGH); // turn LED on
  }
  // if the button isn't pressed 
  else
  {
    digitalWrite(pinLED, LOW); // turn LED off
  }
}
