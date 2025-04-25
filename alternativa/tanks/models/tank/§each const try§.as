package alternativa.tanks.models.tank
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.services.battlereadiness.BattleReadinessService;
   import §import import§.§finally for false§;
   
   public class §each const try§
   {
      [Inject]
      public static var battleService:BattleService;
      
      [Inject]
      public static var §switch for in§:BattleReadinessService;
      
      private var §#!t§:Boolean = true;
      
      public function §each const try§(param1:Boolean)
      {
         super();
         this.§#!t§ = param1;
      }
      
      public function §3"I§(param1:§finally for false§, param2:§finally for false§) : void
      {
         var _loc3_:Vector3 = new Vector3(param1.x,param1.y,param1.z);
         var _loc4_:Vector3 = new Vector3(-Math.sin(param2.z),Math.cos(param2.z),0);
         if(this.§#!t§)
         {
            this.§#!t§ = false;
            battleService.§=-§();
            battleService.§null const in§();
            battleService.§function for var§(_loc3_,_loc4_);
            §switch for in§.§`!R§();
         }
         else
         {
            battleService.§#!"§(_loc3_,_loc4_);
         }
      }
   }
}

