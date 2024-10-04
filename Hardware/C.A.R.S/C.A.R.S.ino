#include <SoftwareSerial.h>
SoftwareSerial BTserial(10, 11); // RX | TX
void setup() {
BTserial.begin(9600);
Serial.begin(115200);
pinMode(2,INPUT);
}
void loop() {
int d=0;
delay(2000);
d=digitalRead(2);
Serial.println(d);
delay(1000);
if(d==LOW){
BTserial.println("H");
d=1;
}
}
