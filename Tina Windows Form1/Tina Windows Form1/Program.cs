using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Tina_Windows_Form1
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
            include<LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

            const int switchPin1 = 6;
            const int switchPin0 = 7;

            int switchState1 = 0;
            int switchState0 = 0;

            int a = 0;
            int tez = 1;

            char t[16];
            int poz = 0;

            void setup()
            {
                // set up the number of columns and rows on the LCD
                lcd.begin(16, 2);

                // set up the switch pin as an input
                pinMode(switchPin0, INPUT);
                pinMode(switchPin1, INPUT);
                pinMode(A0, OUTPUT);
                pinMode(A1, OUTPUT);

                // Print a message to the LCD.
                lcd.print("Otkucaj tekst:");
                // set the cursor to column 0, line 1
                // line 1 is the second row, since counting begins with 0
                lcd.setCursor(0, 1);
                // print to the second line
                lcd.print(" ");
            }

            void loop()
            {
                // check the status of the switch
                switchState1 = digitalRead(switchPin1);
                switchState0 = digitalRead(switchPin0);

                // compare the switchState to its previous state
                if (switchState0 != LOW)
                {//nula
                    digitalWrite(A0, LOW);
                    digitalWrite(A1, LOW);
                    digitalWrite(A0, HIGH);
                    delay(250);
                    digitalWrite(A0, LOW);
                    digitalWrite(A1, LOW);
                    tez = 2 * tez;
                }
                if (switchState1 != LOW)
                {//jedan
                    digitalWrite(A0, LOW);
                    digitalWrite(A1, LOW);
                    digitalWrite(A1, HIGH);
                    delay(250);
                    digitalWrite(A0, LOW);
                    digitalWrite(A1, LOW);
                    a = a + tez;
                    tez = 2 * tez;
                }
                if (tez > 128)
                {//novo slovo se prikazuje na ekranu
                    t[poz] = (char)a;
                    //t[poz+1]="\0";
                    poz = poz + 1;
                    lcd.clear();
                    lcd.print("Otkucaj tekst:");
                    // set the cursor to column 0, line 1
                    // line 1 is the second row, since counting begins with 0
                    lcd.setCursor(0, 1);
                    // print to the second line
                    lcd.print(t);
                    tez = 1;
                    a = 0;
                }
                // end loop
            }



        }
    }
}
