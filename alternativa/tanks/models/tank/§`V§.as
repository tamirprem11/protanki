package alternativa.tanks.models.tank
{
   import alternativa.math.Vector3;
   import alternativa.osgi.OSGi;
   import alternativa.physics.Body;
   import alternativa.physics.BodyState;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.events.§do for finally§;
   import alternativa.tanks.battle.events.§return const if§;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.§if if§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.weapon.shared.§override for class§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import §dynamic package§.§extends const switch§;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §`V§ extends §case const var§ implements §if if§
   {
      [Inject]
      public static var battleEventDispatcher:BattleEventDispatcher;
      
      private static const §for var final§:Number = 2;
      
      private static const §""K§:EncryptedInt = new EncryptedIntImpl(1000);
      
      private static const §?!D§:EncryptedInt = new EncryptedIntImpl(2000);
      
      private static const §return var case§:Number = 500;
      
      private static const §do var case§:Number = 200;
      
      private static const §static const package§:Number = §return var case§ * §return var case§;
      
      private static const §set var case§:Number = 300000;
      
      private var tank:Tank;
      
      private var §+1§:int;
      
      private var §in var do§:Vector3 = new Vector3();
      
      private var §super for class§:Number;
      
      private var §0<§:Dictionary;
      
      private var §>%§:int;
      
      private var §[!M§:Boolean;
      
      private var §0t§:Boolean;
      
      private var §'K§:§return const if§;
      
      private var §1&§:Boolean = false;
      
      public function §`V§(param1:Tank, param2:Dictionary)
      {
         super();
         this.tank = param1;
         this.§0<§ = param2;
         this.§0t§ = true;
         this.§'K§ = new §return const if§(battleEventDispatcher);
         this.§'K§.§import var get§(§do for finally§,this.§switch var throw§);
         this.§'K§.§""'§();
      }
      
      private function §switch var throw§(param1:Object) : void
      {
         this.§0t§ = true;
      }
      
      public function reset() : void
      {
         this.§+1§ = §try var final§().§catch static§();
         this.§in var do§.copy(this.§4!P§());
         this.§>%§ = this.tank.§ "a§().§function set var§ + this.tank.§^C§().§function set var§;
         this.§[!M§ = this.tank.§class const finally§() || this.tank.§import set while§();
         this.§super for class§ = this.§if for override§();
      }
      
      public function §3<§(param1:Number) : void
      {
         var _loc2_:Body = null;
         var _loc3_:Boolean = this.§implements get§() || this.§0t§;
         this.§0t§ = false;
         if(this.tank.§import set while§())
         {
            for each(_loc2_ in this.tank.§default var continue§())
            {
            }
         }
         if(this.§="K§() || this.tank.§each var for§())
         {
            this.§>z§();
         }
         if(_loc3_ || this.§-""§())
         {
            this.§#!4§(_loc3_);
            this.§1&§ = false;
         }
      }
      
      private function §="K§() : Boolean
      {
         return §override for class§.§[c§(this.§in var do§,this.tank.§<J§().state.position);
      }
      
      private function §>z§() : void
      {
         this.§+1§ = §try var final§().§catch static§() - §get var throw§.§ h§;
         this.§in var do§.copy(this.§;"f§());
         this.§else const set§().§>!v§(true);
      }
      
      private function §;"f§() : Vector3
      {
         return this.tank.§<J§().prevState.position;
      }
      
      private function §-""§() : Boolean
      {
         return this.§static default§() || this.§1&§;
      }
      
      private function §implements get§() : Boolean
      {
         return this.§@5§() || this.§switch set catch§() || this.§;!$§() || this.§var var throw§() || this.§&!I§() || this.§function for set§() || this.tank.§use finally§() || this.tank.§?I§();
      }
      
      public function §+"=§() : void
      {
         this.§1&§ = true;
      }
      
      private function §&!I§() : Boolean
      {
         var _loc1_:Boolean = this.tank.§class const finally§() || this.tank.§import set while§();
         return _loc1_ != this.§[!M§;
      }
      
      private function §var var throw§() : Boolean
      {
         var _loc1_:int = this.tank.§ "a§().§function set var§ + this.tank.§^C§().§function set var§;
         return this.§>%§ == 0 && _loc1_ != 0 || this.§>%§ != 0 && _loc1_ == 0;
      }
      
      private function §static default§() : Boolean
      {
         return §try var final§().§catch static§() - this.§+1§ >= §?!D§.getInt();
      }
      
      private function §@5§() : Boolean
      {
         return this.§in var do§.distanceToXYSquared(this.§4!P§()) > §static const package§;
      }
      
      private function §switch set catch§() : Boolean
      {
         return Math.abs(this.§in var do§.z - this.§4!P§().z) > §do var case§;
      }
      
      private function §#!4§(param1:Boolean) : void
      {
         this.reset();
         this.§else const set§().§break for super§(param1);
      }
      
      private function §4!P§() : Vector3
      {
         return this.tank.§<J§().state.position;
      }
      
      private function §function for set§() : Boolean
      {
         var _loc1_:Number = this.§if for override§() - this.§super for class§;
         return _loc1_ > §set var case§;
      }
      
      private function §;!$§() : Boolean
      {
         var _loc1_:int = §""K§.getInt();
         return this.§default const dynamic§() && getTimer() - this.§+1§ > _loc1_;
      }
      
      private function §if for override§() : Number
      {
         var _loc1_:BodyState = this.tank.§<J§().state;
         var _loc2_:Number = _loc1_.position.z * Math.abs(§try var final§().§final for switch§());
         var _loc3_:Number = _loc1_.velocity.length();
         var _loc4_:Number = _loc3_ * _loc3_ * 0.5;
         return _loc4_ + _loc2_;
      }
      
      private function §default const dynamic§() : Boolean
      {
         var _loc1_:Tank = null;
         var _loc2_:Body = null;
         var _loc3_:BodyState = null;
         var _loc4_:Body = this.tank.§<J§();
         var _loc5_:BodyState = _loc4_.state;
         var _loc6_:Number = this.tank.§package set catch§();
         var _loc7_:Number = §for var final§;
         for each(var _loc10_ in this.§0<§)
         {
            _loc1_ = _loc10_;
            _loc10_;
            if(this.tank != _loc1_)
            {
               _loc2_ = _loc1_.§<J§();
               _loc3_ = _loc2_.state;
               if(§extends const switch§.test(_loc5_.position,_loc5_.velocity,_loc6_,_loc3_.position,_loc3_.velocity,_loc1_.§package set catch§(),_loc7_))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function §else const set§() : §catch for const§
      {
         return §catch for const§(OSGi.getInstance().getService(§finally const class§));
      }
   }
}

