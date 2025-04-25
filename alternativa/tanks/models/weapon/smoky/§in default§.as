package alternativa.tanks.models.weapon.smoky
{
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§native var import§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import flash.utils.getTimer;
   import §return in§.§;!f§;
   import §true for package§.§5"b§;
   
   public class §in default§ extends §case const var§ implements §extends for finally§, §do for switch§
   {
      private static const §6"N§:§'!L§ = new §'!L§();
      
      private var enabled:Boolean;
      
      private var §finally const use§:EncryptedInt = new EncryptedIntImpl();
      
      private var §0!d§:EncryptedInt = new EncryptedIntImpl();
      
      private var §4!"§:§var for super§;
      
      private var controller:§package const final§;
      
      private var §,I§:§1!a§;
      
      private var §#!'§:§9"L§;
      
      private var weakening:§5"b§;
      
      private var callback:§implements var super§;
      
      private var effects:§&"I§;
      
      public function §in default§(param1:int, param2:§var for super§, param3:§1!a§, param4:§5"b§, param5:§&"I§, param6:§implements var super§, param7:§package const final§)
      {
         super();
         this.§finally const use§.setInt(param1);
         this.§4!"§ = param2;
         this.§,I§ = param3;
         this.weakening = param4;
         this.effects = param5;
         this.callback = param6;
         this.controller = param7;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.controller.init();
         this.reset();
      }
      
      public function destroy() : void
      {
         this.§4!"§ = null;
         this.§,I§ = null;
         this.weakening = null;
         this.effects = null;
         this.callback = null;
         this.controller.destroy();
         this.controller = null;
      }
      
      public function activate() : void
      {
         §try var final§().§finally var false§(this);
      }
      
      public function deactivate() : void
      {
         §try var final§().§<!3§(this);
      }
      
      public function enable() : void
      {
         this.enabled = true;
         this.controller.§extends const static§();
      }
      
      public function disable(param1:Boolean) : void
      {
         this.enabled = false;
      }
      
      public function reset() : void
      {
         this.§0!d§.setInt(getTimer());
      }
      
      public function getStatus() : Number
      {
         var _loc1_:Number = 1 - (this.§0!d§.getInt() - getTimer()) / this.§finally const use§.getInt();
         return _loc1_ > 1 ? Number(1) : Number(_loc1_);
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         if(this.controller.§use for§())
         {
            if(this.enabled && param1 >= this.§0!d§.getInt())
            {
               this.§final var final§(param1);
            }
            this.controller.§extends const static§();
         }
      }
      
      private function §final var final§(param1:int) : void
      {
         var _loc2_:Tank = null;
         var _loc3_:Number = NaN;
         this.§0!d§.setInt(param1 + this.§finally const use§.getInt());
         this.§#!'§.§1"f§(§6"N§);
         this.§#!'§.§<J§().addWorldForceScaled(§6"N§.§#!!§,§6"N§.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
         this.effects.§"h§(this.§#!'§.§,![§(),this.§#!'§.§0[§());
         var _loc4_:§;!f§ = new §;!f§();
         if(§#",§.§override case§(this.§#!'§.§<J§(),§6"N§) && this.§class while§(§6"N§,_loc4_))
         {
            this.effects.§finally break§(_loc4_.position);
            if(§#",§.§extends for use§(_loc4_.body))
            {
               _loc2_ = _loc4_.body.tank;
               _loc3_ = this.weakening.§3;§(_loc4_.distance);
               _loc2_.§class set set§(_loc4_.position,_loc4_.direction,this.§4!"§.§do const class§() * _loc3_);
               this.callback.§var set else§(param1,_loc4_.position,_loc4_.body);
            }
            else
            {
               this.effects.§each const each§(§6"N§.§#!!§,_loc4_.position);
               this.callback.§get const null§(param1,_loc4_.position);
            }
         }
         else
         {
            this.callback.§each const var§(param1);
         }
      }
      
      private function §class while§(param1:§'!L§, param2:§;!f§) : Boolean
      {
         var _loc3_:§native var import§ = this.§,I§.target(param1);
         param2.setResult(param1,_loc3_);
         return _loc3_.§dynamic throw§();
      }
      
      public function §4!5§(param1:Vector3) : void
      {
         this.effects.§>"+§(param1);
      }
   }
}

