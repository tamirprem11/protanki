package §6!%§
{
   import §#q§.§0"A§;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.weapon.shared.§ !I§;
   import alternativa.tanks.models.weapon.shared.§4J§;
   import scpacker.tanks.WeaponsManager;
   
   public class §implements for import§ implements §const var switch§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private const §?!;§:Number = 0.000001;
      
      private const §while set§:Number = 10000;
      
      private var §2"c§:§ !I§;
      
      private var §3!l§:§4J§;
      
      private var §override set catch§:Number;
      
      public function §implements for import§(param1:String)
      {
         super();
         this.§2"c§ = battleService.§null implements§();
         this.§3!l§ = battleService.§finally var try§();
         var _loc2_:§0"A§ = WeaponsManager.shotDatas[param1];
         this.§override set catch§ = Math.max(_loc2_.§false var final§.value,_loc2_.§break var if§.value);
      }
      
      public function §>B§(param1:Tank, param2:Number, param3:Number) : Number
      {
         var _loc4_:Body = param1.§<J§();
         var _loc5_:Number = this.§2"c§.§>B§(_loc4_,param2,param3,this.§while set§,this.§override set catch§);
         return this.§3!l§.§case const import§(_loc4_) + _loc5_ * this.§?!;§;
      }
   }
}

