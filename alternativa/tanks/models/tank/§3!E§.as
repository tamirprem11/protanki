package alternativa.tanks.models.tank
{
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.battle.objects.tank.§null set else§;
   import alternativa.tanks.utils.BitMask;
   
   public class §3!E§ extends §case const var§ implements §#!q§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var weapon:§extends for finally§;
      
      private var §%"L§:BitMask = new BitMask();
      
      public function §3!E§(param1:§extends for finally§)
      {
         super();
         this.weapon = param1;
         this.§%"L§.setBits(§null set else§.DEAD);
      }
      
      public function §package for get§() : void
      {
         this.weapon.activate();
      }
      
      public function §true const with§() : void
      {
         this.weapon.deactivate();
      }
      
      public function §switch in§(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = this.§%"L§.isEmpty();
         this.§%"L§.setBits(param1);
         if(_loc3_)
         {
            this.weapon.disable(param2);
         }
      }
      
      public function §finally var use§(param1:int) : void
      {
         var _loc2_:Boolean = this.§%"L§.isEmpty();
         this.§%"L§.clearBits(param1);
         if(!_loc2_ && this.§%"L§.isEmpty())
         {
            this.weapon.enable();
         }
      }
   }
}

