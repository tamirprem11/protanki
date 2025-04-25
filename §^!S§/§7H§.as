package §^!S§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.objects.tank.§9"L§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.objects.tank.§extends for finally§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapon.§super throw§;
   import alternativa.tanks.models.weapon.§var for super§;
   import §dynamic package§.§]"P§;
   
   public class §7H§ implements §extends for finally§
   {
      private static const §const for continue§:§'!L§ = new §'!L§();
      
      private static const §finally for static§:§super throw§ = new §super throw§();
      
      private var effects:§<"'§;
      
      private var §#!'§:§9"L§;
      
      private var §for for while§:§2"O§;
      
      private var §4!"§:§var for super§;
      
      public function §7H§(param1:§var for super§, param2:§2"O§, param3:§<"'§)
      {
         super();
         this.§4!"§ = param1;
         this.§for for while§ = param2;
         this.effects = param3;
      }
      
      public function init(param1:§9"L§) : void
      {
         this.§#!'§ = param1;
      }
      
      public function destroy() : void
      {
         this.effects.§dynamic const override§();
      }
      
      public function activate() : void
      {
      }
      
      public function deactivate() : void
      {
         this.effects.§dynamic const override§();
      }
      
      public function enable() : void
      {
      }
      
      public function disable(param1:Boolean) : void
      {
         this.effects.§dynamic const override§();
      }
      
      public function reset() : void
      {
         this.effects.§dynamic const override§();
      }
      
      public function getStatus() : Number
      {
         return 0;
      }
      
      public function §implements var true§() : void
      {
         this.effects.§else for get§(this.§#!'§.§,![§(),this.§#!'§.§0[§(),this.§for for while§.§`!i§());
         this.§#!'§.§;!n§(§finally for static§);
         this.effects.§import for break§(§finally for static§.§for const for§);
      }
      
      public function §'R§(param1:Vector3, param2:Vector.<Body>, param3:Vector.<Vector3>) : void
      {
         var _loc4_:Vector3 = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Body = null;
         var _loc8_:Vector3 = null;
         var _loc9_:Tank = null;
         this.§#!'§.§1"f§(§const for continue§);
         this.§#!'§.§<J§().addWorldForceScaled(§const for continue§.§for const for§,§const for continue§.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
         var _loc10_:Vector3 = param1;
         if(param2 != null && param2.length > 0)
         {
            _loc4_ = new Vector3();
            _loc4_.diff(param3[param3.length - 1],§const for continue§.§#!!§).normalize();
            if(Vector3.isFiniteVector(_loc4_))
            {
               if(_loc10_ == null)
               {
                  _loc10_ = §0!Z§.§return set with§(§const for continue§.§#!!§,_loc4_);
               }
               _loc5_ = 1;
               _loc6_ = 0;
               while(_loc6_ < param2.length)
               {
                  _loc7_ = param2[_loc6_];
                  if(_loc7_ != null && _loc7_.tank != null)
                  {
                     _loc8_ = param3[_loc6_];
                     if(Vector3.isFiniteVector(_loc8_))
                     {
                        _loc9_ = _loc7_.tank;
                        _loc9_.§class set set§(_loc8_,_loc4_,this.§4!"§.§do const class§() * _loc5_);
                     }
                  }
                  _loc5_ *= this.§for for while§.§if package§();
                  _loc6_++;
               }
            }
            this.effects.§implements const implements§(§const for continue§.§for const for§,param3[param3.length - 1],param3,param2);
         }
         this.effects.§use for import§(§const for continue§.§for const for§,_loc10_,§const for continue§.direction);
         if(param1 != null)
         {
            this.effects.§;j§(§const for continue§.§#!!§,param1);
            this.effects.§default set set§(§const for continue§.§for const for§,param1,this.§native var switch§(§const for continue§.§for const for§,param1));
         }
      }
      
      private function §native var switch§(param1:Vector3, param2:Vector3) : Vector3
      {
         var _loc3_:Vector3 = param2.clone();
         _loc3_.subtract(param1).normalize();
         var _loc4_:Vector3 = param2.clone();
         _loc4_.subtract(_loc3_);
         var _loc5_:RayHit = new RayHit();
         if(this.§#!'§.§<J§().scene.collisionDetector.raycastStatic(_loc4_,_loc3_,§]"P§.§return set for§,100,null,_loc5_))
         {
            return _loc5_.normal;
         }
         _loc3_.reverse();
         return _loc3_;
      }
      
      public function §try set var§() : void
      {
         this.§#!'§.§1"f§(§const for continue§);
         this.§#!'§.§<J§().addWorldForceScaled(§const for continue§.§for const for§,§const for continue§.direction,-this.§4!"§.§for for in§());
         this.§#!'§.§7+§();
      }
   }
}

