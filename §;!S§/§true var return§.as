package §;!S§
{
   import §7!-§.§?"[§;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§var for super§;
   import §true for package§.§5"b§;
   
   public class §true var return§ implements §extends for finally§
   {
      private static const §include const class§:Vector3 = new Vector3();
      
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private var §4!"§:§var for super§;
      
      private var effects:§2`§;
      
      private var §#!'§:§9"L§;
      
      private var weakening:§5"b§;
      
      private var §#!<§:§?"[§;
      
      public function §true var return§(param1:§var for super§, param2:§5"b§, param3:§?"[§, param4:§2`§)
      {
         super();
         this.§4!"§ = param1;
         this.effects = param4;
         this.§#!<§ = param3;
         this.weakening = param2;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
      }
      
      public function destroy() : void
      {
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
      }
      
      public function enable() : void
      {
      }
      
      public function disable(param1:Boolean) : void
      {
      }
      
      public function reset() : void
      {
      }
      
      public function getStatus() : Number
      {
         return 0;
      }
      
      public function §final var final§() : void
      {
         this.§#!'§.§1"f§(§const for continue§);
         this.§set set break§(§const for continue§);
      }
      
      private function §set set break§(param1:§'!L§) : void
      {
         this.§#!'§.§<J§().addWorldForceScaled(param1.§for const for§,param1.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
         this.effects.§"h§(this.§#!'§.§,![§(),this.§#!'§.§0[§());
      }
      
      public function §<-§(param1:Vector3) : void
      {
         this.§#!'§.§1"f§(§const for continue§);
         this.§set set break§(§const for continue§);
         this.effects.§finally break§(param1);
         this.effects.§each const each§(§const for continue§.§#!!§,param1);
         this.§>H§(param1,null);
      }
      
      public function §static const false§(param1:Tank, param2:Vector3) : void
      {
         this.§#!'§.§1"f§(§const for continue§);
         this.§set set break§(§const for continue§);
         this.effects.§finally break§(param2);
         this.§`!7§(param1,param2,§const for continue§.§for const for§);
         this.§>H§(param2,param1.§<J§());
      }
      
      private function §`!7§(param1:Tank, param2:Vector3, param3:Vector3) : void
      {
         var _loc4_:Number = NaN;
         §include const class§.diff(param2,param3).normalize();
         if(Vector3.isFiniteVector(§include const class§))
         {
            _loc4_ = this.§41§(param2);
            param1.§class set set§(param2,§include const class§,this.§4!"§.§do const class§() * _loc4_);
         }
      }
      
      private function §41§(param1:Vector3) : Number
      {
         return this.weakening.§3;§(param1.distanceTo(§const for continue§.§for const for§));
      }
      
      private function §>H§(param1:Vector3, param2:Body) : void
      {
         var _loc3_:Number = this.§41§(param1);
         this.§#!<§.§=X§(Tank(this.§#!'§).tankData.turret,param1,_loc3_,param2);
      }
   }
}

