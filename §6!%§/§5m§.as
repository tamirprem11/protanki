package §6!%§
{
   import §#q§.§0"A§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.weapon.§+"Y§;
   import alternativa.tanks.models.weapon.shared.§ !I§;
   import scpacker.tanks.WeaponsManager;
   
   public class §5m§ implements §const var switch§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private var §2"c§:§ !I§;
      
      private var §override set catch§:Number;
      
      private var §throw const if§:Number;
      
      public function §5m§(param1:§+"Y§)
      {
         super();
         this.§2"c§ = battleService.§null implements§();
         this.§throw const if§ = this.§&a§(param1);
         var _loc2_:§0"A§ = WeaponsManager.shotDatas[param1.§#!u§().turret.id];
         this.§override set catch§ = Math.max(_loc2_.§false var final§.value,_loc2_.§break var if§.value);
      }
      
      public function §>B§(param1:Tank, param2:Number, param3:Number) : Number
      {
         return this.§2"c§.§>B§(param1.§<J§(),param2,param3,this.§throw const if§,this.§override set catch§);
      }
      
      protected function §&a§(param1:§+"Y§) : Number
      {
         return param1.§81§().§&a§();
      }
   }
}

