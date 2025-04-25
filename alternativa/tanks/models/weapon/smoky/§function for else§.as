package alternativa.tanks.models.weapon.smoky
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§var for super§;
   
   public class §function for else§ implements §extends for finally§
   {
      private static const §6"N§:§'!L§ = new §'!L§();
      
      private var §4!"§:§var for super§;
      
      private var effects:§&"I§;
      
      private var §#!'§:§9"L§;
      
      public function §function for else§(param1:§var for super§, param2:§&"I§)
      {
         super();
         this.§4!"§ = param1;
         this.effects = param2;
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
      
      public function §#K§() : void
      {
         this.§#!'§.§1"f§(§6"N§);
         this.§"h§(§6"N§);
      }
      
      public function §finally const catch§(param1:Vector3) : void
      {
         this.§#!'§.§1"f§(§6"N§);
         this.§"h§(§6"N§);
         this.effects.§each const each§(§6"N§.§#!!§,param1);
         this.effects.§finally break§(param1);
      }
      
      public function §="!§(param1:Tank, param2:Vector3, param3:Number, param4:Boolean) : void
      {
         this.§#!'§.§1"f§(§6"N§);
         this.§"h§(§6"N§);
         var _loc5_:Vector3 = param2.clone().subtract(§6"N§.§for const for§).normalize();
         param1.§class set set§(param2,_loc5_,param3 * this.§4!"§.§do const class§());
         this.effects.§finally break§(param2);
         if(param4)
         {
            this.effects.§>"+§(param1.§<J§().state.position);
         }
      }
      
      private function §"h§(param1:§'!L§) : void
      {
         this.§#!'§.§<J§().addWorldForceScaled(param1.§for const for§,param1.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
         this.effects.§"h§(this.§#!'§.§,![§(),this.§#!'§.§0[§());
      }
   }
}

