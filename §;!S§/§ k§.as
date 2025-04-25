package §;!S§
{
   import §7!-§.§?"[§;
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
   
   public class § k§ extends §case const var§ implements §extends for finally§, §do for switch§
   {
      private static const §6"N§:§'!L§ = new §'!L§();
      
      private static const §!"b§:§;!f§ = new §;!f§();
      
      private var enabled:Boolean;
      
      private var §finally const use§:EncryptedInt = new EncryptedIntImpl();
      
      private var §0!d§:EncryptedInt = new EncryptedIntImpl();
      
      private var §4!"§:§var for super§;
      
      private var controller:§package const final§;
      
      private var §,I§:§1!a§;
      
      private var §#!'§:§9"L§;
      
      private var weakening:§5"b§;
      
      private var §#!<§:§?"[§;
      
      private var callback:§implements const import§;
      
      private var effects:§2`§;
      
      public function § k§(param1:int, param2:§var for super§, param3:§5"b§, param4:§1!a§, param5:§?"[§, param6:§2`§, param7:§implements const import§)
      {
         super();
         this.§finally const use§.setInt(param1);
         this.§4!"§ = param2;
         this.controller = new §package const final§();
         this.§,I§ = param4;
         this.weakening = param3;
         this.§#!<§ = param5;
         this.callback = param7;
         this.effects = param6;
      }
      
      private static function §do const import§(param1:§;!f§) : void
      {
         param1.position.add(param1.normal);
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
         this.§#!<§ = null;
         this.callback = null;
         this.effects = null;
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
         var _loc2_:Number = NaN;
         var _loc3_:Tank = null;
         var _loc4_:Vector.<String> = new Vector.<String>();
         var _loc5_:Vector.<Number> = new Vector.<Number>();
         this.§0!d§.setInt(param1 + this.§finally const use§.getInt());
         this.§#!'§.§1"f§(§6"N§);
         this.§#!'§.§<J§().addWorldForceScaled(§6"N§.§#!!§,§6"N§.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
         this.effects.§"h§(this.§#!'§.§,![§(),this.§#!'§.§0[§());
         if(§#",§.§override case§(this.§#!'§.§<J§(),§6"N§) && this.§class while§(§6"N§,§!"b§))
         {
            §do const import§(§!"b§);
            this.effects.§finally break§(§!"b§.position);
            _loc2_ = this.weakening.§3;§(§!"b§.distance);
            this.§#!<§.§=X§(Tank(this.§#!'§).tankData.turret,§!"b§.position,_loc2_,§!"b§.body,_loc4_,_loc5_);
            if(§#",§.§extends for use§(§!"b§.body))
            {
               _loc3_ = §!"b§.body.tank;
               _loc3_.§class set set§(§!"b§.position,§!"b§.direction,this.§4!"§.§do const class§() * _loc2_);
               this.callback.§var set else§(param1,§!"b§.position,§!"b§.body,_loc4_,_loc5_);
            }
            else
            {
               this.effects.§each const each§(§6"N§.§#!!§,§!"b§.position);
               this.callback.§get const null§(param1,§!"b§.position,_loc4_,_loc5_);
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
   }
}

