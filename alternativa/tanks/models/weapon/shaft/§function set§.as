package alternativa.tanks.models.weapon.shaft
{
   public class §function set§
   {
      public static const IDLE:§function set§ = new §function set§(1);
      
      public static const READY_TO_SHOOT:§function set§ = new §function set§(2);
      
      public static const §`"V§:§function set§ = new §function set§(3);
      
      public static const §?P§:§function set§ = new §function set§(4);
      
      private var value:int;
      
      public function §function set§(param1:int)
      {
         super();
         this.value = param1;
      }
      
      [Obfuscation(rename="false")]
      public function toString() : String
      {
         return this.value.toString();
      }
   }
}

