package §super for implements§
{
   import §<"c§.§%!u§;
   import §<"c§.§+!+§;
   import §]l§.§const const set§;
   import §]l§.§with set static§;
   import alternativa.engine3d.core.Object3D;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.battle.objects.tank.§while set break§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapon.§super throw§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§native var import§;
   import alternativa.tanks.models.weapons.targeting.priority.§<!$§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import §break for extends§.§>"D§;
   import §const set false§.§+"3§;
   import flash.utils.getTimer;
   
   public class §extends for static§ extends §case const var§ implements §extends for finally§, §while set break§, §implements var include§, §do for switch§
   {
      private static const §,!p§:int = 250;
      
      private static const §package for native§:EncryptedInt = new EncryptedIntImpl(1000);
      
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const §finally for static§:§super throw§ = new §super throw§();
      
      private static const localHitPoint:Vector3 = new Vector3();
      
      private static const §'d§:Vector3 = new Vector3();
      
      private static const §super native§:Matrix3 = new Matrix3();
      
      private var controller:§package const final§;
      
      private var §#!'§:§9"L§;
      
      private var callback:§&"!§;
      
      private var effects:§do for function§;
      
      private var §,I§:§1!a§;
      
      private var §continue const get§:§with set static§;
      
      private var § !N§:Boolean;
      
      private var §91§:Boolean;
      
      private var enabled:Boolean;
      
      private var §true for case§:int;
      
      private var state:§const const set§;
      
      private var §2!8§:EncryptedInt = new EncryptedIntImpl();
      
      private var §do false§:EncryptedInt = new EncryptedIntImpl();
      
      private var currentTarget:Body;
      
      private var §&>§:§+"3§;
      
      private var §6!u§:RayHit;
      
      private var §@"$§:int;
      
      private var §?"b§:§%!u§;
      
      private var §'l§:§+!+§;
      
      public function §extends for static§(param1:ClientObject, param2:§with set static§, param3:§package const final§, param4:§do for function§, param5:§&"!§)
      {
         super();
         this.§?"b§ = new §%!u§(param2);
         this.§'l§ = new §+!+§(param2.coneAngle);
         this.§,I§ = new §1!a§(this.§'l§,new §>"D§(param1,param2.radius),new §<!$§(this.§?"b§));
         this.controller = param3;
         this.callback = param5;
         this.effects = param4;
         this.§continue const get§ = param2;
         this.§&>§ = this.§&>§;
      }
      
      private static function §if for do§(param1:Tank, param2:Tank) : §const const set§
      {
         return param1.§4r§(param2.teamType) ? §const const set§.HEALING : §const const set§.DAMAGING;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.effects.init(param1.§0[§(),param1.§,![§());
         this.controller.init();
         this.controller.setWeapon(this);
      }
      
      public function destroy() : void
      {
         this.§,I§ = null;
         this.effects = null;
         this.callback = null;
         this.deactivate();
         this.controller.destroy();
         this.§&>§ = null;
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
         this.§?"b§.§#"M§();
         this.currentTarget = null;
         this.§ !N§ = false;
         this.§91§ = false;
         this.§true for case§ = 0;
         this.§do false§.setInt(0);
         this.§2!8§.setInt(0);
         this.state = §const const set§.OFF;
      }
      
      public function getStatus() : Number
      {
         var _loc1_:Number = NaN;
         if(this.§ !N§)
         {
            _loc1_ = this.§override var continue§(getTimer(),this.state);
         }
         else
         {
            _loc1_ = this.§<"V§(getTimer());
         }
         return _loc1_ / this.§continue const get§.capacity;
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
         var _loc2_:Body = null;
         if(this.§91§)
         {
            this.§6!u§ = this.target();
            _loc2_ = Boolean(this.§6!u§) ? this.§6!u§.shape.body : null;
            if(_loc2_ != this.currentTarget)
            {
               this.currentTarget = _loc2_;
               this.§const var with§(param1);
            }
            else if(this.currentTarget != null)
            {
               if(this.§@"$§ + §,!p§ <= param1)
               {
                  this.§include for catch§(param1);
               }
               this.§0"H§();
            }
            this.§,?§(param1);
            this.§for throw§(param1);
         }
         else
         {
            this.stop(param1,true);
         }
      }
      
      private function §for throw§(param1:int) : void
      {
         if(this.§do false§.getInt() == 0 && this.§override var continue§(param1,this.state) <= 0)
         {
            this.stop(param1,true);
         }
      }
      
      private function §,?§(param1:int) : void
      {
         if(this.§do false§.getInt() > 0)
         {
            if(param1 >= this.§2!8§.getInt())
            {
               this.§do false§.setInt(this.§do false§.getInt() - 1);
               this.tick(param1);
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
      
      public function §5!D§(param1:Tank) : void
      {
         if(param1 != null)
         {
            if(this.currentTarget == param1.§<J§())
            {
               this.currentTarget = null;
               this.§+%§(§try var final§().§catch static§());
            }
         }
      }
      
      private function §const var with§(param1:int) : void
      {
         this.§+%§(param1);
         this.§include for catch§(param1);
      }
      
      private function §include for catch§(param1:int) : void
      {
         this.§@"$§ = param1;
         this.callback.§include for catch§(param1,this.§6!u§);
      }
      
      private function §+%§(param1:int) : void
      {
         var _loc2_:Tank = null;
         var _loc3_:§const const set§ = this.state;
         if(this.currentTarget == null)
         {
            this.state = §const const set§.IDLE;
         }
         else
         {
            _loc2_ = this.§#!'§.§<J§().tank;
            if(§if for do§(_loc2_,this.currentTarget.tank) == §const const set§.HEALING)
            {
               this.state = §const const set§.HEALING;
            }
            else
            {
               this.state = §const const set§.DAMAGING;
            }
         }
         this.§true for case§ = this.§catch const include§(param1,this.§override var continue§(param1,_loc3_),this.state);
         if(this.currentTarget == null)
         {
            this.§7"5§();
         }
         else
         {
            this.§break if§(param1);
         }
      }
      
      private function §7"5§() : void
      {
         this.effects.§+"c§(§const const set§.IDLE);
         this.§?"b§.§#"M§();
         this.§do false§.setInt(0);
      }
      
      private function §break if§(param1:int) : void
      {
         this.§7"2§(param1);
         this.§@""§(param1);
         this.§0"H§();
      }
      
      private function §0"H§() : void
      {
         var _loc1_:Tank = this.currentTarget.tank;
         var _loc2_:Tank = this.§#!'§.§<J§().tank;
         localHitPoint.copy(this.§6!u§.position);
         §#",§.globalToLocal(this.currentTarget,localHitPoint);
         this.effects.§+"c§(§if for do§(_loc2_,_loc1_),_loc1_,localHitPoint);
      }
      
      private function §@""§(param1:int) : void
      {
         this.§2!8§.setInt(param1 + this.§continue const get§.checkPeriodMsec);
      }
      
      private function §7"2§(param1:int) : void
      {
         var _loc2_:Number = this.§override var continue§(param1,this.state);
         this.§do false§.setInt(§package for native§.getInt() * _loc2_ / (this.§catch const else§(this.state) * this.§continue const get§.checkPeriodMsec));
      }
      
      private function §catch const else§(param1:§const const set§) : int
      {
         switch(param1)
         {
            case §const const set§.DAMAGING:
               return this.§continue const get§.dischargeDamageRate;
            case §const const set§.HEALING:
               return this.§continue const get§.dischargeHealingRate;
            case §const const set§.IDLE:
               return this.§continue const get§.dischargeIdleRate;
            default:
               return 0;
         }
      }
      
      private function tick(param1:int) : void
      {
         this.§2!8§.setInt(param1 + this.§continue const get§.checkPeriodMsec);
         this.§#!'§.§;!n§(§finally for static§);
         this.callback.onTick(param1,this.§6!u§);
      }
      
      private function start(param1:int) : void
      {
         if(!this.§ !N§)
         {
            this.§ !N§ = true;
            this.§6!u§ = this.target();
            this.currentTarget = Boolean(this.§6!u§) ? this.§6!u§.shape.body : null;
            this.§true for case§ = this.§catch const include§(param1,this.§<"V§(param1),this.state);
            this.§const var with§(param1);
         }
      }
      
      private function stop(param1:int, param2:Boolean) : void
      {
         if(this.§ !N§)
         {
            this.§?"b§.§#"M§();
            this.currentTarget = null;
            this.§91§ = false;
            this.§ !N§ = false;
            this.§true for case§ = this.§0!,§(param1,this.§override var continue§(param1,this.state));
            this.§do false§.setInt(0);
            this.effects.§dynamic const override§();
            if(param2)
            {
               this.callback.stop(param1);
            }
         }
      }
      
      private function §<"V§(param1:int) : Number
      {
         var _loc2_:Number = this.§continue const get§.capacity;
         var _loc3_:Number = this.§continue const get§.chargeRate * (param1 - this.§true for case§) / §package for native§.getInt();
         return _loc3_ > _loc2_ ? Number(_loc2_) : Number(_loc3_);
      }
      
      private function §override var continue§(param1:int, param2:§const const set§) : Number
      {
         var _loc3_:Number = this.§continue const get§.capacity - this.§catch const else§(param2) * (param1 - this.§true for case§) / §package for native§.getInt();
         return _loc3_ < 0 ? Number(0) : Number(_loc3_);
      }
      
      private function §0!,§(param1:int, param2:Number) : int
      {
         return param1 - param2 / this.§continue const get§.chargeRate * §package for native§.getInt();
      }
      
      private function §catch const include§(param1:int, param2:Number, param3:§const const set§) : int
      {
         return param1 - (this.§continue const get§.capacity - param2) / this.§catch const else§(param3) * §package for native§.getInt();
      }
      
      private function target() : RayHit
      {
         var _loc1_:RayHit = null;
         var _loc2_:Tank = null;
         this.§#!'§.§1"f§(§const for continue§);
         if(this.currentTarget != null)
         {
            this.§finally for null§();
            §'d§.transform3(§super native§);
            this.§'l§.§case set set§(§'d§);
         }
         else
         {
            this.§'l§.§?R§();
         }
         var _loc3_:§native var import§ = this.§,I§.target(§const for continue§);
         this.§final if§(_loc3_);
         if(_loc3_.§const const else§())
         {
            _loc1_ = _loc3_.§set var include§();
            _loc2_ = _loc1_.shape.body.tank;
            if(_loc2_.tankData.health == 0)
            {
               return null;
            }
            this.§?"b§.§ !F§(_loc2_);
            return _loc3_.§set var include§();
         }
         return null;
      }
      
      private function §final if§(param1:§native var import§) : void
      {
         §'d§.copy(param1.§9G§());
         this.§finally for null§();
         §'d§.transformTransposed3(§super native§);
      }
      
      private function §finally for null§() : void
      {
         var _loc1_:Object3D = this.§#!'§.§0[§();
         §super native§.setRotationMatrix(_loc1_.rotationX,_loc1_.rotationY,_loc1_.rotationZ);
      }
   }
}

