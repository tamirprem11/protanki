package §+"O§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.battle.objects.tank.§while set break§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.shared.§true const get§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import flash.utils.getTimer;
   
   public class §@#§ extends §case const var§ implements §extends for finally§, §do for switch§, §while set break§
   {
      private static const §true var set§:EncryptedInt = new EncryptedIntImpl(1000);
      
      private static const §]E§:Number = 0.3;
      
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const §while set final§:Vector.<Body> = new Vector.<Body>();
      
      private static const §implements function§:Vector.<Number> = new Vector.<Number>();
      
      private static const §1"Z§:Vector.<Vector3> = new Vector.<Vector3>();
      
      private var energyCapacity:EncryptedNumber = new EncryptedNumberImpl();
      
      private var §3"[§:EncryptedNumber = new EncryptedNumberImpl();
      
      private var energyRechargeSpeed:EncryptedNumber = new EncryptedNumberImpl();
      
      private var tickInterval:EncryptedInt = new EncryptedIntImpl();
      
      private var §,I§:§true const get§;
      
      private var controller:§package const final§;
      
      private var callback:§3d§;
      
      private var effects:§with if§;
      
      private var §#!'§:§9"L§;
      
      private var §2!8§:EncryptedInt = new EncryptedIntImpl();
      
      private var enabled:Boolean;
      
      private var §91§:Boolean;
      
      private var § !N§:Boolean;
      
      private var §true for case§:EncryptedInt = new EncryptedIntImpl();
      
      private var §do false§:EncryptedInt = new EncryptedIntImpl();
      
      public function §@#§(param1:Number, param2:Number, param3:Number, param4:int, param5:§true const get§, param6:§package const final§, param7:§3d§, param8:§with if§)
      {
         super();
         this.energyCapacity.setNumber(param1);
         this.§3"[§.setNumber(param2);
         this.energyRechargeSpeed.setNumber(param3);
         this.tickInterval.setInt(param4);
         this.§,I§ = param5;
         this.controller = param6;
         this.callback = param7;
         this.effects = param8;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.controller.init();
         this.controller.setWeapon(this);
      }
      
      public function destroy() : void
      {
         this.§,I§ = null;
         this.effects = null;
         this.callback = null;
         this.controller.destroy();
         this.controller = null;
         this.§#!'§ = null;
      }
      
      public function activate() : void
      {
         §try var final§().§finally var false§(this);
      }
      
      public function deactivate() : void
      {
         this.disable(false);
         §try var final§().§<!3§(this);
      }
      
      public function enable() : void
      {
         if(!this.enabled)
         {
            this.enabled = true;
            this.§91§ = this.controller.§8"1§();
         }
      }
      
      public function disable(param1:Boolean) : void
      {
         if(this.enabled)
         {
            this.enabled = false;
            this.stop(§try var final§().§catch static§(),param1);
         }
      }
      
      public function reset() : void
      {
         this.§ !N§ = false;
         this.§91§ = false;
         this.§true for case§.setInt(0);
         this.§2!8§.setInt(0);
         this.§do false§.setInt(0);
      }
      
      public function getStatus() : Number
      {
         var _loc1_:Number = NaN;
         if(this.§91§)
         {
            _loc1_ = this.§override var continue§(getTimer());
         }
         else
         {
            _loc1_ = this.§<"V§(getTimer());
         }
         return _loc1_ / this.energyCapacity.getNumber();
      }
      
      public function §do var get§() : void
      {
         if(this.enabled)
         {
            this.§91§ = true;
         }
      }
      
      public function §throw continue§() : void
      {
         this.§91§ = false;
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         if(this.enabled)
         {
            if(this.§ !N§)
            {
               this.§-!V§(param1);
            }
            else
            {
               this.§4!0§(param1);
            }
         }
      }
      
      private function §-!V§(param1:int) : void
      {
         if(this.§91§)
         {
            this.§,?§(param1);
            this.§;!1§(param1);
         }
         else
         {
            this.stop(param1,true);
         }
      }
      
      private function §,?§(param1:int) : void
      {
         if(this.§do false§.getInt() > 0)
         {
            if(this.§2!8§.getInt() <= param1)
            {
               this.tick(param1);
               this.§do false§.setInt(this.§do false§.getInt() - 1);
            }
         }
      }
      
      private function §;!1§(param1:int) : void
      {
         if(this.§do false§.getInt() == 0)
         {
            if(this.§override var continue§(param1) <= 0)
            {
               this.stop(param1,true);
            }
         }
      }
      
      private function §4!0§(param1:int) : void
      {
         if(this.§91§)
         {
            this.start(param1);
         }
      }
      
      private function start(param1:int) : void
      {
         var _loc2_:Number = NaN;
         if(!this.§ !N§)
         {
            this.§ !N§ = true;
            _loc2_ = this.§<"V§(param1);
            this.§true for case§.setInt(this.§case const native§(param1,_loc2_));
            this.§include var package§(_loc2_);
            this.§2!8§.setInt(param1 + this.tickInterval.getInt());
            this.effects.§`!w§(this.§#!'§.§<J§(),this.§#!'§.§,![§(),this.§#!'§.§0[§());
            this.callback.start(param1);
         }
      }
      
      private function §include var package§(param1:Number) : void
      {
         this.§do false§.setInt(§true var set§.getInt() * param1 / (this.§3"[§.getNumber() * this.tickInterval.getInt()));
      }
      
      private function stop(param1:int, param2:Boolean) : void
      {
         if(this.§ !N§)
         {
            this.§91§ = false;
            this.§ !N§ = false;
            this.§true for case§.setInt(param1 - this.§override var continue§(param1) / this.energyRechargeSpeed.getNumber() * §true var set§.getInt());
            this.§do false§.setInt(0);
            this.effects.§dynamic const override§();
            if(param2)
            {
               this.callback.stop(param1);
            }
         }
      }
      
      private function tick(param1:int) : void
      {
         var _loc2_:Body = null;
         this.§2!8§.setInt(param1 + this.tickInterval.getInt());
         var _loc3_:Vector3 = this.§#!'§.§,![§();
         this.§#!'§.§1"f§(§const for continue§);
         var _loc4_:Number = _loc3_.y;
         §while set final§.length = 0;
         §implements function§.length = 0;
         §1"Z§.length = 0;
         this.§,I§.§case import§(this.§#!'§.§<J§(),_loc4_,§]E§,§const for continue§.§#!!§,§const for continue§.direction,§const for continue§.§default var super§,§while set final§,§implements function§,§1"Z§);
         var _loc5_:int = int(§while set final§.length);
         if(_loc5_ > 0)
         {
            this.callback.onTick(this,§while set final§,§implements function§,§1"Z§,param1);
         }
         var _loc6_:int = 0;
         while(_loc6_ < §while set final§.length)
         {
            _loc2_ = §while set final§[_loc6_];
            _loc2_.tank.§90§(§1"Z§[_loc6_]);
            _loc6_++;
         }
         §while set final§.length = 0;
         §implements function§.length = 0;
         §1"Z§.length = 0;
      }
      
      private function §<"V§(param1:int) : Number
      {
         var _loc2_:Number = this.energyCapacity.getNumber();
         var _loc3_:Number = this.energyRechargeSpeed.getNumber() * (param1 - this.§true for case§.getInt()) / §true var set§.getInt();
         return _loc3_ > _loc2_ ? Number(_loc2_) : Number(_loc3_);
      }
      
      private function §override var continue§(param1:int) : Number
      {
         var _loc2_:Number = this.energyCapacity.getNumber() - this.§3"[§.getNumber() * (param1 - this.§true for case§.getInt()) / §true var set§.getInt();
         return _loc2_ < 0 ? Number(0) : Number(_loc2_);
      }
      
      private function §case const native§(param1:int, param2:Number) : int
      {
         return param1 - (this.energyCapacity.getNumber() - param2) / this.§3"[§.getNumber() * §true var set§.getInt();
      }
   }
}

