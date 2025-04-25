package alternativa.tanks.service.settings.keybinding
{
   import alternativa.osgi.service.locale.ILocaleService;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import projects.tanks.clients.fp10.libraries.TanksLocale;
   
   public class §catch for include§
   {
      private static var §final var package§:Dictionary;
      
      [Inject]
      public static var localeService:ILocaleService;
      
      public function §catch for include§()
      {
         super();
         this.§8!U§();
      }
      
      public function §do for break§(param1:uint) : String
      {
         var _loc2_:String = §final var package§[param1];
         return _loc2_ == null ? "" : _loc2_;
      }
      
      private function §8!U§() : void
      {
         §final var package§ = new Dictionary();
         §final var package§[Keyboard.NUMBER_0] = "0";
         §final var package§[Keyboard.NUMBER_1] = "1";
         §final var package§[Keyboard.NUMBER_2] = "2";
         §final var package§[Keyboard.NUMBER_3] = "3";
         §final var package§[Keyboard.NUMBER_4] = "4";
         §final var package§[Keyboard.NUMBER_5] = "5";
         §final var package§[Keyboard.NUMBER_6] = "6";
         §final var package§[Keyboard.NUMBER_7] = "7";
         §final var package§[Keyboard.NUMBER_8] = "8";
         §final var package§[Keyboard.NUMBER_9] = "9";
         §final var package§[Keyboard.MINUS] = "-";
         §final var package§[Keyboard.EQUAL] = "=";
         §final var package§[Keyboard.Q] = "Q";
         §final var package§[Keyboard.W] = "W";
         §final var package§[Keyboard.E] = "E";
         §final var package§[Keyboard.R] = "R";
         §final var package§[Keyboard.T] = "T";
         §final var package§[Keyboard.Y] = "Y";
         §final var package§[Keyboard.U] = "U";
         §final var package§[Keyboard.I] = "I";
         §final var package§[Keyboard.O] = "O";
         §final var package§[Keyboard.P] = "P";
         §final var package§[Keyboard.A] = "A";
         §final var package§[Keyboard.S] = "S";
         §final var package§[Keyboard.D] = "D";
         §final var package§[Keyboard.F] = "F";
         §final var package§[Keyboard.G] = "G";
         §final var package§[Keyboard.H] = "H";
         §final var package§[Keyboard.J] = "J";
         §final var package§[Keyboard.K] = "K";
         §final var package§[Keyboard.L] = "L";
         §final var package§[Keyboard.Z] = "Z";
         §final var package§[Keyboard.X] = "X";
         §final var package§[Keyboard.C] = "C";
         §final var package§[Keyboard.V] = "V";
         §final var package§[Keyboard.B] = "B";
         §final var package§[Keyboard.N] = "N";
         §final var package§[Keyboard.M] = "M";
         §final var package§[Keyboard.LEFT] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_LEFT);
         §final var package§[Keyboard.UP] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_UP);
         §final var package§[Keyboard.RIGHT] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_RIGHT);
         §final var package§[Keyboard.DOWN] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_DOWN);
         §final var package§[Keyboard.NUMPAD_0] = "NumPad 0";
         §final var package§[Keyboard.NUMPAD_1] = "NumPad 1";
         §final var package§[Keyboard.NUMPAD_2] = "NumPad 2";
         §final var package§[Keyboard.NUMPAD_3] = "NumPad 3";
         §final var package§[Keyboard.NUMPAD_4] = "NumPad 4";
         §final var package§[Keyboard.NUMPAD_5] = "NumPad 5";
         §final var package§[Keyboard.NUMPAD_6] = "NumPad 6";
         §final var package§[Keyboard.NUMPAD_7] = "NumPad 7";
         §final var package§[Keyboard.NUMPAD_8] = "NumPad 8";
         §final var package§[Keyboard.NUMPAD_9] = "NumPad 9";
         §final var package§[Keyboard.NUMPAD_ADD] = "NumPad +";
         §final var package§[Keyboard.NUMPAD_SUBTRACT] = "NumPad -";
         §final var package§[Keyboard.NUMPAD_DECIMAL] = "NumPad .";
         §final var package§[Keyboard.NUMPAD_DIVIDE] = "NumPad /";
         §final var package§[Keyboard.NUMPAD_ENTER] = "NumPad Enter";
         §final var package§[Keyboard.LEFTBRACKET] = "[";
         §final var package§[Keyboard.RIGHTBRACKET] = "]";
         §final var package§[Keyboard.BACKSLASH] = "\\";
         §final var package§[Keyboard.SEMICOLON] = ";";
         §final var package§[Keyboard.QUOTE] = "\'";
         §final var package§[Keyboard.COMMA] = ",";
         §final var package§[Keyboard.PERIOD] = ".";
         §final var package§[Keyboard.SLASH] = "/";
         §final var package§[Keyboard.PAGE_DOWN] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_PG_DN);
         §final var package§[Keyboard.PAGE_UP] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_PG_UP);
         §final var package§[Keyboard.SPACE] = localeService.getText(TanksLocale.TEXT_KEYBOARD_KEY_SPACE);
         §final var package§[Keyboard.SHIFT] = "Shift";
      }
   }
}

