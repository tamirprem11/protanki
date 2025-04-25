package §7![§
{
   import alternativa.math.Vector3;
   import alternativa.object.ClientObject;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.§case const var§;
   import alternativa.tanks.battle.§do for switch§;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§+"Y§;
   import alternativa.tanks.models.weapon.shared.§package const final§;
   import alternativa.tanks.models.weapons.targeting.§1!a§;
   import alternativa.tanks.models.weapons.targeting.§include static§;
   import alternativa.tanks.models.weapons.targeting.§native var import§;
   import §dynamic package§.§]"P§;
   import flash.utils.getTimer;
   import §return in§.§switch for default§;
   import §true for package§.§5"b§;
   import §with const else§.§final var false§;
   
   public class §'!k§ extends §case const var§ implements §extends for finally§, §do for switch§
   {
      private static var shotId:int;
      
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const shotDirection:Vector3 = new Vector3();
      
      private static const §native for function§:RayHit = new RayHit();
      
      private var §]#§:int;
      
      private var §else for try§:int;
      
      private var §do if§:Number;
      
      private var controller:§package const final§;
      
      private var §#!'§:§9"L§;
      
      private var enabled:Boolean;
      
      private var §,I§:§1!a§;
      
      private var currentBarrel:int;
      
      private var callback:§7!D§;
      
      private var §final var const§:§3!`§;
      
      private var effects:§super for override§;
      
      private var weakening:§5"b§;
      
      public function §'!k§(param1:ClientObject, param2:ClientObject, param3:§final var false§, param4:§extends for try§, param5:§7!D§)
      {
         super();
         var _loc6_:§+"Y§ = new §+"Y§(param1);
         var _loc7_:§5"b§ = _loc6_.§81§();
         var _loc8_:§switch for default§ = _loc6_.§set for set§();
         var _loc9_:§7!D§ = param5;
         var _loc10_:§extends for try§ = param4;
         var _loc11_:§3!`§ = new §3!`§(_loc6_,param3,_loc10_.§++§(param1),_loc9_);
         var _loc12_:§1!a§ = new §include static§(param1,_loc6_,_loc7_.§6u§());
         _loc12_.§,2§().§else var implements§();
         var _loc13_:§package const final§ = new §package const final§();
         this.§else for try§ = _loc6_.§,Z§();
         this.§do if§ = _loc8_.§for for in§();
         this.controller = _loc13_;
         this.§,I§ = _loc12_;
         this.callback = _loc9_;
         this.§final var const§ = _loc11_;
         this.effects = _loc10_.§continue var false§(param1);
         this.weakening = _loc7_;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
         this.controller.init();
      }
      
      public function destroy() : void
      {
         this.§,I§ = null;
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
         this.controller.§extends const static§();
         this.§]#§ = 0;
         this.currentBarrel = 0;
      }
      
      public function getStatus() : Number
      {
         var _loc1_:Number = 1 - (this.§]#§ - getTimer()) / this.§else for try§;
         return _loc1_ > 1 ? Number(1) : Number(_loc1_);
      }
      
      public function §["2§(param1:int, param2:int) : void
      {
         if(this.enabled)
         {
            if(this.controller.§use for§() && param1 >= this.§]#§)
            {
               this.§final var final§(param1);
            }
         }
         this.controller.§extends const static§();
      }
      
      private function §final var final§(param1:int) : void
      {
         this.§]#§ = param1 + this.§else for try§;
         this.§#!'§.§1"f§(§const for continue§,this.currentBarrel);
         this.§#!'§.§<J§().addWorldForceScaled(§const for continue§.§for const for§,§const for continue§.direction,-this.§do if§);
         this.§#!'§.§7+§(1);
         this.effects.§"h§(this.§#!'§.§0[§(),this.§#!'§.§,![§(this.currentBarrel));
         if(§#",§.§override case§(this.§#!'§.§<J§(),§const for continue§))
         {
            this.§?o§(param1,§const for continue§);
         }
         else
         {
            this.§9!!§(param1);
         }
         this.currentBarrel = (this.currentBarrel + 1) % this.§#!'§.§?!§();
      }
      
      private function §?o§(param1:int, param2:§'!L§) : void
      {
         var _loc3_:§native var import§ = null;
         if(this.§function const each§(param2.§#!!§,param2.direction,this.§#!'§.§switch set do§(this.currentBarrel)))
         {
            shotDirection.copy(param2.direction);
         }
         else
         {
            _loc3_ = this.§,I§.target(param2);
            shotDirection.copy(_loc3_.§9G§());
         }
         var _loc4_:§false for break§ = this.§final var const§.§catch const use§();
         _loc4_.§for var true§(param2,shotDirection,this.§#!'§.§<J§(),++shotId);
         this.callback.§each const var§(param1,_loc4_.§throw for implements§(),this.currentBarrel,shotDirection);
      }
      
      private function §function const each§(param1:Vector3, param2:Vector3, param3:Number) : Boolean
      {
         return §try var final§().§`"N§().raycastStatic(param1,param2,§]"P§.§return set for§,param3,null,§native for function§);
      }
      
      private function §9!!§(param1:int) : void
      {
         this.callback.§66§(param1,this.currentBarrel);
      }
   }
}

