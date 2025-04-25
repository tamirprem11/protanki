package alternativa.tanks.controllers.battlecreate
{
   import §]2§.§null var do§;
   import flash.events.Event;
   
   public class CreateBattleEvent extends Event
   {
      public static const CREATE_BATTLE:String = "CreateBattleEvent.CREATE_BATTLE";
      
      public var battleCreateParams:§null var do§;
      
      public function CreateBattleEvent(param1:String, param2:§null var do§, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.battleCreateParams = param2;
      }
   }
}

