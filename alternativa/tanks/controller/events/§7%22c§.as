package alternativa.tanks.controller.events
{
   import flash.events.Event;
   
   public class §7"c§ extends Event
   {
      public static const INVITE_ENTERED:String = "INVITE_ENTERED";
      
      private var §'!m§:String;
      
      public function §7"c§(param1:String)
      {
         this.§'!m§ = param1;
         super(INVITE_ENTERED);
      }
      
      public function get §include const implements§() : String
      {
         return this.§'!m§;
      }
   }
}

