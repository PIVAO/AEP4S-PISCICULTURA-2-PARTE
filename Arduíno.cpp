// C++ code

#include <LiquidCrystal.h>
LiquidCrystal lcd (12,11,5,4,3,2);

class Sensor{
  private: int sensePin;
  
  public: Sensor(int pin) {
    sensePin = pin;
    pinMode(sensePin, INPUT);
  }
  
  public: int getValor(){
    return analogRead(sensePin);
  }
  
};

Sensor sensorTemp(A2);
Sensor sensorPH(A0);
Sensor sensorOX(A3);
Sensor sensorTurbidez(A1);
Sensor sensorNivel(A4);

void setup(){
  lcd.begin(16,2);
}

void temperaturaTrue(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Temp muito");
  lcd.setCursor(1,1);
  lcd.print("alta!!");
}

void temperaturaFalse(){
  lcd.clear();
}

void phTrue(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Nivel de");
  lcd.setCursor(1,1);
  lcd.print("PH alto!!");
}

void phFalse(){
  lcd.clear();
}

void oxTrue(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Nivel de");
  lcd.setCursor(1,1);
  lcd.print("Oxig alto!!");
}

void oxFalse(){
  lcd.clear();
}

void turbidezTrue(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Nivel de");
  lcd.setCursor(1,1);
  lcd.print("Turb alto!!");
}

void turbidezFalse(){
  lcd.clear();
}

void nivelTrue(){
  lcd.clear();
  lcd.setCursor(0,0);
  lcd.print("Nivel de");
  lcd.setCursor(1,1);
  lcd.print("Agua baixo!!");
}

void nivelFalse(){
  lcd.clear();
}

void loop(){
  if(sensorTemp.getValor() > 36){
    temperaturaTrue();
  }
  else{
    temperaturaFalse();
  }
  
  if(sensorPH.getValor() > 8,5){
    phTrue();
  }
  else{
    phFalse();
  }
  
  if(sensorOX.getValor() > 3,5){
    oxTrue();
  }
  else{
    oxFalse();
  }
  
  if(sensorTurbidez.getValor() > 45){
    turbidezTrue();
  }
  else{
    turbidezFalse();
  }
  
  if(sensorNivel.getValor() < 60){
    nivelTrue();
  }
  else{
    nivelFalse();
  }
 
}
