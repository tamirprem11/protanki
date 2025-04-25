package §<"c§
{
   import §6!%§.§const var switch§;
   import §]l§.§with set static§;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.weapon.shared.§ !I§;
   import alternativa.tanks.models.weapon.shared.§^!u§;
   
   public class §%!u§ implements §const var switch§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private const §?!;§:Number = 0.0001;
      
      private const §final var default§:Number = 50;
      
      private const §5!g§:Number = 100;
      
      private var §2"c§:§ !I§;
      
      private var §3!l§:§^!u§;
      
      private var §override set catch§:Number;
      
      private var §throw const if§:Number;
      
      private var target:Tank;
      
      public function §%!u§(param1:§with set static§)
      {
         super();
         this.§2"c§ = battleService.§null implements§();
         this.§3!l§ = battleService.§-L§();
         this.§throw const if§ = param1.radius - this.§final var default§;
         this.§override set catch§ = param1.coneAngle;
      }
      
      public function § !F§(param1:Tank) : void
      {
         this.target = param1;
      }
      
      public function §#"M§() : void
      {
         this.target = null;
      }
      
      public function §>B§(param1:Tank, param2:Number, param3:Number) : Number
      {
         if(param1.tankData.health == 0)
         {
            return 0;
         }
         var _loc4_:Body = param1.§<J§();
         var _loc5_:Number = this.§2"c§.§>B§(_loc4_,param2,param3,this.§throw const if§,this.§override set catch§);
         return this.§3!l§.§>B§(_loc4_) + _loc5_ * this.§?!;§ + this.§set set do§(param1);
      }
      
      private function §set set do§(param1:Tank) : Number
      {
         return param1 != this.target ? Number(0) : Number(this.§5!g§);
      }
   }
}

