package §dynamic package§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.PhysicsScene;
   import alternativa.physics.collision.CollisionShape;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.events.BattleEventDispatcher;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.utils.DataValidationErrorEvent;
   import alternativa.tanks.utils.DataValidatorType;
   import alternativa.tanks.utils.Vector3Validator;
   
   public class §"8§
   {
      private static const §8q§:Number = 200;
      
      private var §1!G§:Vector3Validator;
      
      private var physicsScene:PhysicsScene;
      
      private var collisionDetector:§throw const function§;
      
      private var battleEventDispatcher:BattleEventDispatcher;
      
      public function §"8§(param1:int, param2:Number, param3:BattleEventDispatcher)
      {
         super();
         this.battleEventDispatcher = param3;
         this.physicsScene = new PhysicsScene();
         this.physicsScene.gravity.reset(0,0,-param2);
         this.§1!G§ = new Vector3Validator(this.physicsScene.gravity);
         this.physicsScene.collisionIterations = 4;
         this.physicsScene.contactIterations = 4;
         this.physicsScene.allowedPenetration = 5;
         this.collisionDetector = new §throw const function§();
         this.physicsScene.collisionDetector = this.collisionDetector;
         this.physicsScene.time = param1;
      }
      
      public function §^"U§(param1:Number) : void
      {
         this.physicsScene.gravity.z = -param1;
      }
      
      public function §catch static§() : int
      {
         return this.physicsScene.time;
      }
      
      public function §4"H§(param1:int) : void
      {
         this.physicsScene.time += param1;
      }
      
      public function §finally set catch§(param1:Vector.<CollisionShape>) : void
      {
         this.collisionDetector.§3!7§(param1);
      }
      
      public function §`"N§() : §throw const function§
      {
         return this.collisionDetector;
      }
      
      public function addBody(param1:§6"d§) : void
      {
         this.physicsScene.addBody(param1.body);
         this.collisionDetector.§catch var false§(param1);
      }
      
      public function removeBody(param1:§6"d§) : void
      {
         this.physicsScene.removeBody(param1.body);
         this.collisionDetector.§;!G§(param1);
      }
      
      public function destroy() : void
      {
         this.collisionDetector.destroy();
      }
      
      public function update(param1:int) : void
      {
         if(this.§1!G§.isValid())
         {
            this.physicsScene.update(param1);
            this.§"o§();
         }
         else
         {
            this.physicsScene.time = int.MAX_VALUE;
            this.battleEventDispatcher.§if throw§(new DataValidationErrorEvent(DataValidatorType.MEMHACK_GRAVITY));
         }
      }
      
      private function §"o§() : void
      {
         var _loc1_:§6"d§ = null;
         var _loc2_:Body = null;
         var _loc3_:Vector3 = null;
         var _loc4_:Vector3 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         for each(_loc1_ in this.collisionDetector.getTankBodies())
         {
            _loc2_ = _loc1_.body;
            _loc3_ = _loc2_.state.velocity;
            _loc4_ = §#",§.§for const finally§;
            _loc2_.state.orientation.getZAxis(_loc4_);
            _loc5_ = _loc3_.x * _loc4_.x + _loc3_.y * _loc4_.y + _loc3_.z * _loc4_.z;
            if(_loc4_.z < -0.1 || _loc4_.z < 0.1 && _loc5_ < 0)
            {
               _loc5_ = -_loc5_;
               _loc4_.reverse();
            }
            _loc1_.§get for continue§();
            if(_loc1_.§switch finally§ || _loc1_.§use for dynamic§ || _loc1_.§class var var§() || !_loc1_.§override const final§())
            {
               _loc6_ = §8q§;
               if(!_loc1_.§switch finally§ && _loc1_.§override const final§() && _loc1_.§?G§ > _loc6_)
               {
                  _loc6_ = _loc1_.§?G§;
               }
               _loc7_ = _loc1_.§for for if§.dot(_loc4_);
               _loc8_ = _loc7_ * _loc1_.body.invMass * §get var throw§.§ h§ / 1000;
               if(_loc8_ < §8q§)
               {
                  _loc8_ = 0;
               }
               _loc6_ = Math.max(_loc8_,_loc6_);
               if(_loc5_ > _loc6_)
               {
                  _loc9_ = _loc5_ - _loc6_;
                  _loc3_.x -= _loc9_ * _loc4_.x;
                  _loc3_.y -= _loc9_ * _loc4_.y;
                  _loc3_.z -= _loc9_ * _loc4_.z;
                  _loc5_ = _loc6_;
               }
            }
            _loc1_.§?G§ = _loc5_;
            _loc1_.§for for if§.reset();
         }
      }
      
      public function §final for switch§() : Number
      {
         return this.physicsScene.gravity.z;
      }
   }
}

