package §^!S§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§super throw§;
   import alternativa.tanks.models.weapon.§var for super§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import alternativa.tanks.utils.MathUtils;
   import flash.utils.getTimer;
   
   public class §["@§ extends §case const var§ implements §extends for finally§, §do for switch§
   {
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const §finally for static§:§super throw§ = new §super throw§();
      
      private var controller:§package const final§;
      
      private var §,I§:§1!a§;
      
      private var §finally const use§:EncryptedInt = new EncryptedIntImpl();
      
      private var §4!"§:§var for super§;
      
      private var weakeningCoeff:Number;
      
      private var §if var false§:EncryptedInt = new EncryptedIntImpl();
      
      private var effects:§<"'§;
      
      private var callback:§default const package§;
      
      private var §#!'§:§9"L§;
      
      private var enabled:Boolean;
      
      private var §0!d§:EncryptedInt = new EncryptedIntImpl();
      
      private var §="^§:Boolean;
      
      public function §["@§(param1:§1!a§, param2:§package const final§, param3:int, param4:§var for super§, param5:Number, param6:int, param7:§<"'§, param8:§default const package§)
      {
         super();
         this.§,I§ = param1;
         this.controller = param2;
         this.§finally const use§.setInt(param3);
         this.§4!"§ = param4;
         this.weakeningCoeff = param5;
         this.§if var false§.setInt(param6);
         this.effects = param7;
         this.callback = param8;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.controller.init();
      }
      
      public function destroy() : void
      {
         this.deactivate();
         this.effects.§dynamic const override§();
         this.controller.destroy();
         this.controller = null;
         this.effects = null;
         this.§4!"§ = null;
         this.§,I§ = null;
         this.callback = null;
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
         if(!this.enabled)
         {
            this.enabled = true;
            this.controller.§extends const static§();
         }
      }
      
      public function disable(param1:Boolean) : void
      {
         if(this.enabled)
         {
            this.enabled = false;
            this.effects.§dynamic const override§();
         }
      }
      
      public function reset() : void
      {
         this.enabled = false;
         this.effects.§dynamic const override§();
         this.§0!d§.setInt(0);
         this.§="^§ = false;
      }
      
      public function getStatus() : Number
      {
         if(this.§="^§)
         {
            return MathUtils.clamp((this.§0!d§.getInt() - getTimer()) / this.§if var false§.getInt(),0,1);
         }
         return MathUtils.clamp(1 - (this.§0!d§.getInt() - getTimer()) / this.§finally const use§.getInt(),0,1);
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         if(this.§="^§)
         {
            if(param1 >= this.§0!d§.getInt())
            {
               this.§final var final§(param1);
            }
         }
         else if(this.enabled)
         {
            if(param1 >= this.§0!d§.getInt() && this.controller.§use for§())
            {
               this.§implements var true§(param1);
            }
         }
         this.controller.§extends const static§();
      }
      
      private function §implements var true§(param1:int) : void
      {
         this.§="^§ = true;
         this.§0!d§.setInt(param1 + this.§if var false§.getInt());
         this.effects.§else for get§(this.§#!'§.§,![§(),this.§#!'§.§0[§(),this.§if var false§.getInt());
         this.§#!'§.§;!n§(§finally for static§);
         this.effects.§import for break§(§finally for static§.§for const for§);
         this.callback.§^"9§(param1);
      }
      
      private function §final var final§(param1:int) : void
      {
         var _loc2_:§get set import§ = null;
         this.§="^§ = false;
         this.§0!d§.setInt(param1 + this.§finally const use§.getInt());
         this.§#!'§.§1"f§(§const for continue§);
         this.§#!'§.§<J§().addWorldForceScaled(§const for continue§.§for const for§,§const for continue§.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
         if(§#",§.§override case§(this.§#!'§.§<J§(),§const for continue§))
         {
            _loc2_ = new §get set import§();
            _loc2_.§4C§(this.§,I§.target(§const for continue§));
            if(_loc2_.§catch for function§.length > 0)
            {
               this.§implements set for§(_loc2_);
            }
            this.§else each§(_loc2_,§const for continue§);
            this.callback.§each const var§(param1,_loc2_.§try var try§(),_loc2_.targets,_loc2_.§catch for function§);
         }
         else
         {
            this.callback.§#+§(param1);
         }
      }
      
      private function §implements set for§(param1:§get set import§) : void
      {
         var _loc2_:Body = null;
         var _loc3_:Tank = null;
         var _loc4_:Number = 1;
         var _loc5_:int = 0;
         while(_loc5_ < param1.targets.length)
         {
            _loc2_ = param1.targets[_loc5_];
            _loc3_ = _loc2_.tank;
            _loc3_.§class set set§(param1.§catch for function§[_loc5_],param1.shotDirection,this.§4!"§.§do const class§() * _loc4_);
            _loc4_ *= this.weakeningCoeff;
            _loc5_++;
         }
      }
      
      private function §else each§(param1:§get set import§, param2:§'!L§) : void
      {
         var _loc3_:Vector3 = param1.§try var try§();
         if(_loc3_ == null && param1.targets.length > 0)
         {
            _loc3_ = §0!Z§.§return set with§(param2.§#!!§,param1.shotDirection);
         }
         this.effects.§use for import§(param2.§for const for§,_loc3_,param2.direction);
         this.effects.§;j§(param2.§#!!§,param1.§try var try§());
         if(_loc3_ != null)
         {
            if(param1.hasStaticHit)
            {
               this.effects.§default set set§(param2.§for const for§,param1.§final set super§,param1.§"!,§);
            }
            if(param1.targets.length > 0)
            {
               this.effects.§implements const implements§(param2.§for const for§,_loc3_,param1.§catch for function§,param1.targets);
            }
         }
      }
   }
}

