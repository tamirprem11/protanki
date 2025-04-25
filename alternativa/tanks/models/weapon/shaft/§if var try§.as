package alternativa.tanks.models.weapon.shaft
{
   public class §if var try§
   {
      public static const TRIGGER_PULL:§if var try§ = new §if var try§("TRIGGER_PULL");
      
      public static const TRIGGER_RELEASE:§if var try§ = new §if var try§("TRIGGER_RELEASE");
      
      public static const STOP:§if var try§ = new §if var try§("STOP");
      
      public static const READY_TO_SHOOT:§if var try§ = new §if var try§("READY_TO_SHOOT");
      
      public static const SWITCH:§if var try§ = new §if var try§("SWITCH");
      
      public static const EXIT:§if var try§ = new §if var try§("EXIT");
      
      private var value:String;
      
      public function §if var try§(param1:String)
      {
         super();
         this.value = param1;
      }
      
      [Obfuscation(rename="false")]
      public function toString() : String
      {
         return this.value;
      }
   }
}

