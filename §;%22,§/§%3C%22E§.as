package §;",§
{
   import §#q§.§0"A§;
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§+"Y§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.utils.MathUtils;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   import flash.utils.getTimer;
   import §package function§.§case const while§;
   import scpacker.tanks.WeaponsManager;
   
   public class §<"E§ extends §case const var§ implements §extends for finally§, §do for switch§
   {
      [Inject]
      public static var battleService:BattleService;
      
      private static var shotId:int;
      
      private static const shotDirection:Vector3 = new Vector3();
      
      private static const §native for function§:RayHit = new RayHit();
      
      private static const §class const do§:§'!L§ = new §'!L§();
      
      private var §do if§:Number;
      
      private var §for set dynamic§:Number;
      
      private var §class const case§:int;
      
      private var §,"6§:int;
      
      private var §#!'§:§9"L§;
      
      private var controller:§package const final§ = new §package const final§();
      
      private var §,I§:§3s§;
      
      private var §else for try§:int;
      
      private var effects:§class var import§;
      
      private var §final var const§:§2!E§;
      
      private var callback:§if for§;
      
      private var enabled:Boolean;
      
      private var §return set const§:§case const while§;
      
      public function §<"E§(param1:ClientObject, param2:§case const while§, param3:§include break§, param4:§if for§)
      {
         super();
         var _loc5_:§include break§ = param3;
         var _loc6_:§+"Y§ = new §+"Y§(param1);
         var _loc7_:§if for§ = param4;
         this.§return set const§ = param2;
         this.§do if§ = _loc6_.§set for set§().§for for in§();
         this.§for set dynamic§ = param2.energyRechargeSpeed / 1000;
         var _loc8_:§0"A§ = WeaponsManager.shotDatas[_loc6_.§#!u§().turret.id];
         this.§,I§ = §native include§(_loc8_,param2);
         this.§else for try§ = _loc6_.§,Z§();
         this.effects = _loc5_.§try break§(param1);
         this.§final var const§ = new §2!E§(_loc6_,param2,_loc5_.§["Y§(param1),_loc7_);
         this.callback = _loc7_;
      }
      
      private static function §native include§(param1:§0"A§, param2:§case const while§) : §3s§
      {
         var _loc3_:Number = param1.§break var if§.value;
         var _loc4_:int = param1.§static for const§.value;
         var _loc5_:Number = param1.§false var final§.value;
         var _loc6_:int = param1.§%!1§.value;
         var _loc7_:Number = param2.shotDistance;
         var _loc8_:§throw const function§ = battleService.§try var final§().§`"N§();
         return new §3s§(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,battleService.§?"e§(),param2.maxRicochetCount);
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.controller.init();
      }
      
      public function destroy() : void
      {
         this.§return set const§ = null;
         this.effects = null;
         this.callback = null;
         this.§,I§ = null;
         this.controller.destroy();
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
         this.enabled = false;
      }
      
      public function reset() : void
      {
         this.§,"6§ = 0;
         this.§class const case§ = 0;
         this.controller.§extends const static§();
      }
      
      public function getStatus() : Number
      {
         return this.§if for override§(getTimer()) / this.§return set const§.energyCapacity;
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         var _loc3_:Number = NaN;
         if(this.enabled)
         {
            if(this.controller.§use for§() && param1 >= this.§class const case§)
            {
               _loc3_ = this.§if for override§(param1);
               if(_loc3_ >= this.§return set const§.energyPerShot)
               {
                  this.§final var final§(param1,_loc3_);
               }
            }
         }
         this.controller.§extends const static§();
      }
      
      private function §final var final§(param1:int, param2:Number) : void
      {
         this.§class const case§ = param1 + this.§else for try§;
         this.§throw for static§(param1,param2 - this.§return set const§.energyPerShot);
         this.§#!'§.§1"f§(§class const do§);
         this.§#!'§.§7+§();
         this.§!!]§(§class const do§.§for const for§,§class const do§.direction,-this.§do if§);
         this.effects.§"h§(this.§#!'§.§0[§(),this.§#!'§.§,![§(),§class const do§.§for const for§);
         this.effects.§try var return§(this.§#!'§.§0[§(),this.§#!'§.§,![§());
         if(§#",§.§override case§(this.§#!'§.§<J§(),§class const do§))
         {
            this.§?o§(param1,§class const do§);
         }
         else
         {
            this.§9!!§(param1);
         }
      }
      
      private function §!!]§(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         this.§#!'§.§<J§().addWorldForceScaled(param1,param2,param3);
      }
      
      private function §?o§(param1:int, param2:§'!L§) : void
      {
         if(this.§function const each§(param2.§#!!§,param2.direction,this.§#!'§.§switch set do§()))
         {
            shotDirection.copy(param2.direction);
         }
         else
         {
            this.§,I§.§<4§(param2.§for const for§,param2.direction,param2.§default var super§,this.§#!'§.§<J§(),shotDirection);
         }
         this.§while const override§(param1,param2,shotDirection);
      }
      
      private function §9!!§(param1:int) : void
      {
         this.callback.§66§(param1);
      }
      
      private function §function const each§(param1:Vector3, param2:Vector3, param3:Number) : Boolean
      {
         return §try var final§().§`"N§().raycastStatic(param1,param2,§]"P§.§return set for§,param3,null,§native for function§);
      }
      
      private function §if for override§(param1:int) : Number
      {
         return MathUtils.clamp(this.§for set dynamic§ * (param1 - this.§,"6§),0,this.§return set const§.energyCapacity);
      }
      
      private function §throw for static§(param1:int, param2:Number) : void
      {
         this.§,"6§ = param1 - param2 / this.§for set dynamic§;
      }
      
      private function §while const override§(param1:int, param2:§'!L§, param3:Vector3) : void
      {
         var _loc4_:§-!s§ = this.§final var const§.§catch const use§();
         _loc4_.§for var true§(param2,param3,this.§#!'§.§<J§(),++shotId);
         this.callback.§each const var§(param1,_loc4_.§throw for implements§(),param3);
      }
   }
}

