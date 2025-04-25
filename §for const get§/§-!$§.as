package §for const get§
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.camera.§for for native§;
   import alternativa.tanks.service.settings.keybinding.§%!6§;
   import §const set false§.§+"3§;
   import §const set false§.§,"Y§;
   import §const set false§.§?!-§;
   
   public class §-!$§ extends §2!q§ implements §?!-§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var camera:§for for native§;
      
      public function §-!$§(param1:§+"3§)
      {
         super(param1);
         §static var default§(new §,"Y§(§%!6§.CHASSIS_LEFT_MOVEMENT,§%!6§.CHASSIS_RIGHT_MOVEMENT,§%!6§.CENTER_TURRET,§%!6§.CHASSIS_FORWARD_MOVEMENT,§%!6§.CHASSIS_BACKWARD_MOVEMENT));
         this.camera = battleService.§catch include§().§function var break§();
      }
      
      public function §extends const with§(param1:Vector3) : void
      {
         param1.copy(this.camera.§4"R§);
      }
      
      override protected function §83§(param1:§%!6§, param2:Boolean) : void
      {
         super.§83§(param1,param2);
         switch(param1)
         {
            case §%!6§.ROTATE_TURRET_LEFT:
               §&>§.rotateLeft(param2);
               break;
            case §%!6§.ROTATE_TURRET_RIGHT:
               §&>§.rotateRight(param2);
               break;
            case §%!6§.CENTER_TURRET:
               §&>§.center(param2);
         }
      }
   }
}

