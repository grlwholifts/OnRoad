const int l = 16;       // Pin D0 has PWM function
const int sensor = A0; // Pin A0 to read analog input

//Variables:
int pressure; //To store analog value

void setup(){
  
  pinMode(l, OUTPUT);     // Set Pin D0 as 'output' 
  Serial.begin(9600);       // Begin serial communication

}

void loop(){
  
  pressure = analogRead(sensor);         //Read and store analog value from Force Sensitive Resistance
  Serial.println(pressure);                 //Print value
  pressure = map(pressure, 0, 1023, 0, 255);//Map value 0-1023 to 0-255 (PWM)
  analogWrite(led, pressure);               //Send PWM value to led connected at pin D0
  delay(100);                               //Small delay
}
