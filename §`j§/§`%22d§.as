package §`j§
{
   import §],§.§while var const§;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.§throw set package§;
   import alternativa.tanks.models.battle.battlefield.§>"Z§;
   import alternativa.tanks.models.weapon.shared.§ !I§;
   
   public class §`"d§ implements § !I§, §throw set package§
   {
      private var §throw for include§:§while var const§;
      
      public function §`"d§()
      {
         super();
      }
      
      public function §with for extends§(param1:§while var const§) : void
      {
         this.§throw for include§ = param1;
      }
      
      public function §>B§(param1:Body, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         var _loc6_:Tank = param1.tank;
         if(_loc6_.tankData.health > 0 && !_loc6_.§4r§(this.§throw for include§))
         {
            return §>"Z§.§?!F§ - (§>"Z§.§-!k§ * param2 / param4 + (1 - §>"Z§.§-!k§) * Math.abs(param3) / param5);
         }
         return 0;
      }
   }
}

