package §native const if§
{
   import §9"9§.§=!t§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import flash.utils.Dictionary;
   
   public class §null for finally§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var effects:Dictionary = new Dictionary();
      
      public function §null for finally§()
      {
         super();
      }
      
      public function §return const null§(param1:Tank, param2:§=!t§) : void
      {
         this.effects[param1] = param2;
         battleService.§catch include§().§override for native§(param2);
      }
      
      public function §%q§(param1:Tank) : void
      {
         var _loc2_:§=!t§ = this.effects[param1];
         if(_loc2_ != null)
         {
            _loc2_.kill();
            delete this.effects[param1];
         }
      }
   }
}

