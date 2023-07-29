#include "LedControl.h"

LedControl lc = LedControl(8,10,9,1); // Control  (Din, Clk, Cs, No. de dispositivos en cascada[max7219])

int segundos; 
int sen = 11; 
int signal;
int contador;
int contador2; 


void setup() {
  // put your setup code here, to run once:
  lc.shutdown(0,false); 
  lc.setIntensity(0,4);
  lc.clearDisplay(0);
  pinMode(sen, INPUT);
  Serial.begin(9600);
  contador = 0;
  contador2 =0;

}

void loop() {
  // put your main code here, to run repeatedly:
  
  signal = digitalRead(sen);
  if (signal ==0) {
    contador++;
  }

  Serial.println(contador);
  delay(100);
  

  segundos = millis()/1000;
  lc.setDigit(0,3, contador % 10, false); // setDigit recibe como datos (No. de dispositivo [max7219], No. de digito, valor numerico, booleano para activar o no el punto)
  lc.setDigit(0,2, (contador/10) % 10, false);
  lc.setDigit(0,1, (segundos/10) % 10, false);
  lc.setDigit(0,0, (segundos/100) % 10, false);
  delay(1000);
}
