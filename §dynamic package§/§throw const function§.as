package §dynamic package§
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.BodyContact;
   import alternativa.physics.ShapeContact;
   import alternativa.physics.collision.Collider;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.CollisionKdNode;
   import alternativa.physics.collision.CollisionKdTree;
   import alternativa.physics.collision.CollisionShape;
   import alternativa.physics.collision.IRayCollisionFilter;
   import alternativa.physics.collision.colliders.BoxBoxCollider;
   import alternativa.physics.collision.colliders.BoxRectCollider;
   import alternativa.physics.collision.colliders.BoxTriangleCollider;
   import alternativa.physics.collision.types.AABB;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.objects.tank.Tank;
   
   public class §throw const function§ implements CollisionDetector
   {
      private static const §'e§:Number = 0.01;
      
      private const colliders:Object = {};
      
      private const §2!5§:RayHit = new RayHit();
      
      private const §#!a§:§3o§ = new §3o§();
      
      private const §??§:Vector3 = new Vector3();
      
      private const §throw set switch§:Vector3 = new Vector3();
      
      private const §native var null§:RayHit = new RayHit();
      
      private const §0O§:AABB = new AABB();
      
      private const shapeContacts:Vector.<ShapeContact> = new Vector.<ShapeContact>();
      
      private var §var for implements§:CollisionKdTree = new CollisionKdTree();
      
      private var threshold:Number = 0.0001;
      
      private var §5U§:Vector.<§6"d§> = new Vector.<§6"d§>();
      
      private var §-!4§:Body;
      
      public function §throw const function§()
      {
         super();
         var _loc1_:Number = 0.000001;
         this.§include const§(CollisionShape.BOX,CollisionShape.BOX,new BoxBoxCollider(_loc1_));
         this.§include const§(CollisionShape.BOX,CollisionShape.RECT,new BoxRectCollider(_loc1_));
         this.§include const§(CollisionShape.BOX,CollisionShape.TRIANGLE,new BoxTriangleCollider(_loc1_));
         this.§catch const return§();
      }
      
      private function §include const§(param1:int, param2:int, param3:Collider) : void
      {
         this.colliders[param1 | param2] = param3;
      }
      
      private function §catch const return§() : void
      {
         this.§-!4§ = new Body(1,new Matrix3(),10000000000);
         this.§-!4§.movable = false;
      }
      
      public function §3!7§(param1:Vector.<CollisionShape>, param2:AABB = null) : void
      {
         var _loc3_:CollisionShape = null;
         for each(_loc3_ in param1)
         {
            _loc3_.body = this.§-!4§;
         }
         this.§var for implements§.createTree(param1,param2);
      }
      
      public function §catch var false§(param1:§6"d§) : void
      {
         param1.§switch finally§ = false;
         this.§5U§.push(param1);
      }
      
      public function §;!G§(param1:§6"d§) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.§5U§.indexOf(param1));
         if(_loc3_ > -1)
         {
            _loc2_ = int(this.§5U§.length - 1);
            this.§5U§[_loc3_] = this.§5U§[_loc2_];
            this.§5U§.length = _loc2_;
         }
      }
      
      public function getTankBodies() : Vector.<§6"d§>
      {
         return this.§5U§;
      }
      
      public function getBodyContacts(param1:Vector.<BodyContact>) : void
      {
         var _loc2_:§6"d§ = null;
         var _loc3_:Tank = null;
         var _loc4_:int = 0;
         var _loc5_:int = int(this.§5U§.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = this.§5U§[_loc6_];
            _loc2_.§use for dynamic§ = _loc2_.§switch finally§;
            _loc3_ = _loc2_.body.tank;
            _loc2_.§switch finally§ = _loc3_.§set set for§();
            _loc2_.§ 7§.length = 0;
            _loc6_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = this.§5U§[_loc6_];
            _loc4_ = int(param1.length);
            this.§?"P§(_loc2_,param1);
            if(_loc4_ != param1.length)
            {
               _loc2_.§switch finally§ = true;
            }
            _loc4_ = int(param1.length);
            this.§override var class§(_loc2_,_loc6_ + 1,param1);
            _loc6_++;
         }
      }
      
      public function §for include§(param1:CollisionShape, param2:Vector.<ShapeContact>) : void
      {
         return this.§`"Q§(this.§var for implements§.rootNode,param1,param2);
      }
      
      private function §?"P§(param1:§6"d§, param2:Vector.<BodyContact>) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:BodyContact = null;
         if(!param1.body.frozen)
         {
            _loc3_ = int(param1.§>!6§.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               this.§`"Q§(this.§var for implements§.rootNode,param1.§>!6§[_loc4_],this.shapeContacts);
               _loc4_++;
            }
            if(this.shapeContacts.length > 0)
            {
               _loc5_ = BodyContact.create();
               _loc5_.body1 = param1.body;
               _loc5_.body2 = this.§-!4§;
               _loc5_.setShapeContacts(this.shapeContacts);
               this.shapeContacts.length = 0;
               param2[param2.length] = _loc5_;
            }
         }
      }
      
      private function §override var class§(param1:§6"d§, param2:int, param3:Vector.<BodyContact>) : void
      {
         var _loc4_:§6"d§ = null;
         var _loc5_:Body = null;
         var _loc6_:Body = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:BodyContact = null;
         var _loc11_:int = 0;
         var _loc12_:ShapeContact = null;
         var _loc13_:int = int(this.§5U§.length);
         var _loc14_:int = param2;
         while(_loc14_ < _loc13_)
         {
            _loc4_ = this.§5U§[_loc14_];
            _loc5_ = param1.body;
            _loc6_ = _loc4_.body;
            if(!(_loc5_.frozen && _loc6_.frozen) && _loc5_.aabb.intersects(_loc6_.aabb,§'e§))
            {
               this.getContacts(param1.§implements for function§,_loc4_.§implements for function§,this.shapeContacts);
               _loc7_ = int(this.shapeContacts.length);
               if(_loc7_ > 0)
               {
                  _loc8_ = _loc5_.postCollisionFilter == null || _loc5_.postCollisionFilter.considerBodies(_loc5_,_loc6_);
                  _loc9_ = _loc6_.postCollisionFilter == null || _loc6_.postCollisionFilter.considerBodies(_loc6_,_loc5_);
                  if(_loc8_ && _loc9_)
                  {
                     _loc10_ = BodyContact.create();
                     _loc10_.body1 = _loc5_;
                     _loc10_.body2 = _loc6_;
                     _loc10_.setShapeContacts(this.shapeContacts);
                     param3[param3.length] = _loc10_;
                     param1.§ 7§.push(_loc6_);
                     _loc4_.§ 7§.push(_loc5_);
                  }
                  else
                  {
                     _loc11_ = 0;
                     while(_loc11_ < _loc7_)
                     {
                        _loc12_ = this.shapeContacts[_loc11_];
                        _loc12_.dispose();
                        _loc11_++;
                     }
                  }
                  this.shapeContacts.length = 0;
               }
            }
            _loc14_++;
         }
      }
      
      public function getContacts(param1:CollisionShape, param2:CollisionShape, param3:Vector.<ShapeContact>) : void
      {
         if((param1.collisionGroup & param2.collisionGroup) == 0)
         {
            return;
         }
         if(param1.body == param2.body)
         {
            return;
         }
         if(!param1.aabb.intersects(param2.aabb,§'e§))
         {
            return;
         }
         var _loc4_:Collider = this.colliders[param1.type | param2.type];
         _loc4_.getContacts(param1,param2,param3);
      }
      
      public function testCollision(param1:CollisionShape, param2:CollisionShape) : Boolean
      {
         if((param1.collisionGroup & param2.collisionGroup) == 0)
         {
            return false;
         }
         if(param1.body == param2.body)
         {
            return false;
         }
         if(!param1.aabb.intersects(param2.aabb,§'e§))
         {
            return false;
         }
         var _loc3_:Collider = this.colliders[param1.type | param2.type];
         return _loc3_.haveCollision(param1,param2);
      }
      
      public function raycast(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:IRayCollisionFilter, param6:RayHit) : Boolean
      {
         var _loc7_:Boolean = this.raycastStatic(param1,param2,param3,param4,param5,param6);
         var _loc8_:Boolean = this.§super var true§(param1,param2,param3,param4,param5,this.§native var null§);
         if(!((_loc8_) || _loc7_))
         {
            return false;
         }
         if(_loc8_ && _loc7_)
         {
            if(param6.t > this.§native var null§.t)
            {
               param6.copy(this.§native var null§);
            }
            this.§native var null§.clear();
            return true;
         }
         if(_loc7_)
         {
            this.§native var null§.clear();
            return true;
         }
         param6.copy(this.§native var null§);
         this.§native var null§.clear();
         return true;
      }
      
      public function raycastStatic(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:IRayCollisionFilter, param6:RayHit) : Boolean
      {
         if(!this.§46§(param1,param2,this.§var for implements§.rootNode.boundBox,this.§#!a§))
         {
            return false;
         }
         if(this.§#!a§.max < 0 || this.§#!a§.min > param4)
         {
            return false;
         }
         if(this.§#!a§.min <= 0)
         {
            this.§#!a§.min = 0;
            this.§throw set switch§.x = param1.x;
            this.§throw set switch§.y = param1.y;
            this.§throw set switch§.z = param1.z;
         }
         else
         {
            this.§throw set switch§.x = param1.x + this.§#!a§.min * param2.x;
            this.§throw set switch§.y = param1.y + this.§#!a§.min * param2.y;
            this.§throw set switch§.z = param1.z + this.§#!a§.min * param2.z;
         }
         if(this.§#!a§.max > param4)
         {
            this.§#!a§.max = param4;
         }
         var _loc7_:Boolean = this.§17§(this.§var for implements§.rootNode,param1,this.§throw set switch§,param2,param3,this.§#!a§.min,this.§#!a§.max,param5,param6);
         return _loc7_ ? Boolean(param6.t <= param4) : Boolean(false);
      }
      
      public function hasStaticHit(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:IRayCollisionFilter = null) : Boolean
      {
         var _loc6_:Boolean = this.raycastStatic(param1,param2,param3,param4,param5,this.§2!5§);
         this.§2!5§.clear();
         return _loc6_;
      }
      
      private function §`"Q§(param1:CollisionKdNode, param2:CollisionShape, param3:Vector.<ShapeContact>) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Vector.<CollisionShape> = null;
         var _loc7_:Vector.<int> = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(param1.indices != null)
         {
            _loc6_ = this.§var for implements§.staticChildren;
            _loc7_ = param1.indices;
            _loc8_ = int(_loc7_.length);
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               this.getContacts(param2,_loc6_[_loc7_[_loc9_]],param3);
               _loc9_++;
            }
         }
         if(param1.axis == -1)
         {
            return;
         }
         switch(param1.axis)
         {
            case 0:
               _loc4_ = param2.aabb.minX;
               _loc5_ = param2.aabb.maxX;
               break;
            case 1:
               _loc4_ = param2.aabb.minY;
               _loc5_ = param2.aabb.maxY;
               break;
            case 2:
               _loc4_ = param2.aabb.minZ;
               _loc5_ = param2.aabb.maxZ;
         }
         if(_loc4_ < param1.coord)
         {
            this.§`"Q§(param1.negativeNode,param2,param3);
         }
         if(_loc5_ > param1.coord)
         {
            this.§`"Q§(param1.positiveNode,param2,param3);
         }
         if(param1.splitTree != null && _loc4_ < param1.coord && _loc5_ > param1.coord)
         {
            this.§`"Q§(param1.splitTree.rootNode,param2,param3);
         }
      }
      
      private function §if var set§(param1:CollisionShape, param2:CollisionKdNode) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Vector.<CollisionShape> = null;
         var _loc6_:Vector.<int> = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(param2.indices != null)
         {
            _loc5_ = this.§var for implements§.staticChildren;
            _loc6_ = param2.indices;
            _loc7_ = int(_loc6_.length);
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               if(this.testCollision(param1,_loc5_[_loc6_[_loc8_]]))
               {
                  return true;
               }
               _loc8_++;
            }
         }
         if(param2.axis == -1)
         {
            return false;
         }
         switch(param2.axis)
         {
            case 0:
               _loc3_ = param1.aabb.minX;
               _loc4_ = param1.aabb.maxX;
               break;
            case 1:
               _loc3_ = param1.aabb.minY;
               _loc4_ = param1.aabb.maxY;
               break;
            case 2:
               _loc3_ = param1.aabb.minZ;
               _loc4_ = param1.aabb.maxZ;
         }
         if(param2.splitTree != null && _loc3_ < param2.coord && _loc4_ > param2.coord)
         {
            if(this.§if var set§(param1,param2.splitTree.rootNode))
            {
               return true;
            }
         }
         if(_loc3_ < param2.coord)
         {
            if(this.§if var set§(param1,param2.negativeNode))
            {
               return true;
            }
         }
         if(_loc4_ > param2.coord)
         {
            if(this.§if var set§(param1,param2.positiveNode))
            {
               return true;
            }
         }
         return false;
      }
      
      private function §super var true§(param1:Vector3, param2:Vector3, param3:int, param4:Number, param5:IRayCollisionFilter, param6:RayHit) : Boolean
      {
         var _loc7_:§6"d§ = null;
         var _loc8_:Body = null;
         var _loc9_:AABB = null;
         var _loc10_:int = 0;
         var _loc11_:CollisionShape = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = param1.x + param2.x * param4;
         var _loc14_:Number = param1.y + param2.y * param4;
         var _loc15_:Number = param1.z + param2.z * param4;
         if(_loc13_ < param1.x)
         {
            this.§0O§.minX = _loc13_;
            this.§0O§.maxX = param1.x;
         }
         else
         {
            this.§0O§.minX = param1.x;
            this.§0O§.maxX = _loc13_;
         }
         if(_loc14_ < param1.y)
         {
            this.§0O§.minY = _loc14_;
            this.§0O§.maxY = param1.y;
         }
         else
         {
            this.§0O§.minY = param1.y;
            this.§0O§.maxY = _loc14_;
         }
         if(_loc15_ < param1.z)
         {
            this.§0O§.minZ = _loc15_;
            this.§0O§.maxZ = param1.z;
         }
         else
         {
            this.§0O§.minZ = param1.z;
            this.§0O§.maxZ = _loc15_;
         }
         var _loc16_:Number = param4 + 1;
         var _loc17_:int = int(this.§5U§.length);
         var _loc18_:int = 0;
         while(_loc18_ < _loc17_)
         {
            _loc7_ = this.§5U§[_loc18_];
            _loc8_ = _loc7_.body;
            _loc9_ = _loc8_.aabb;
            if(!(this.§0O§.maxX < _loc9_.minX || this.§0O§.minX > _loc9_.maxX || this.§0O§.maxY < _loc9_.minY || this.§0O§.minY > _loc9_.maxY || this.§0O§.maxZ < _loc9_.minZ || this.§0O§.minZ > _loc9_.maxZ))
            {
               _loc10_ = 0;
               while(_loc10_ < _loc8_.numCollisionShapes)
               {
                  _loc11_ = _loc8_.collisionShapes[_loc10_];
                  if((_loc11_.collisionGroup & param3) != 0)
                  {
                     _loc9_ = _loc11_.aabb;
                     if(!(this.§0O§.maxX < _loc9_.minX || this.§0O§.minX > _loc9_.maxX || this.§0O§.maxY < _loc9_.minY || this.§0O§.minY > _loc9_.maxY || this.§0O§.maxZ < _loc9_.minZ || this.§0O§.minZ > _loc9_.maxZ))
                     {
                        if(!(param5 != null && !param5.considerBody(_loc8_)))
                        {
                           _loc12_ = _loc11_.raycast(param1,param2,this.threshold,this.§??§);
                           if(_loc12_ >= 0 && _loc12_ < _loc16_)
                           {
                              _loc16_ = _loc12_;
                              param6.shape = _loc11_;
                              param6.normal.x = this.§??§.x;
                              param6.normal.y = this.§??§.y;
                              param6.normal.z = this.§??§.z;
                           }
                        }
                     }
                  }
                  _loc10_++;
               }
            }
            _loc18_++;
         }
         if(_loc16_ > param4)
         {
            return false;
         }
         param6.position.x = param1.x + param2.x * _loc16_;
         param6.position.y = param1.y + param2.y * _loc16_;
         param6.position.z = param1.z + param2.z * _loc16_;
         param6.t = _loc16_;
         return true;
      }
      
      private function §46§(param1:Vector3, param2:Vector3, param3:AABB, param4:§3o§) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         param4.min = -1;
         param4.max = 1e+308;
         var _loc7_:int = 0;
         for(; _loc7_ < 3; _loc7_++)
         {
            switch(_loc7_)
            {
               case 0:
                  if(!(param2.x < this.threshold && param2.x > -this.threshold))
                  {
                     _loc5_ = (param3.minX - param1.x) / param2.x;
                     _loc6_ = (param3.maxX - param1.x) / param2.x;
                     break;
                  }
                  if(param1.x < param3.minX || param1.x > param3.maxX)
                  {
                     return false;
                  }
                  continue;
               case 1:
                  if(!(param2.y < this.threshold && param2.y > -this.threshold))
                  {
                     _loc5_ = (param3.minY - param1.y) / param2.y;
                     _loc6_ = (param3.maxY - param1.y) / param2.y;
                     break;
                  }
                  if(param1.y < param3.minY || param1.y > param3.maxY)
                  {
                     return false;
                  }
                  continue;
               case 2:
                  if(!(param2.z < this.threshold && param2.z > -this.threshold))
                  {
                     _loc5_ = (param3.minZ - param1.z) / param2.z;
                     _loc6_ = (param3.maxZ - param1.z) / param2.z;
                     break;
                  }
                  if(param1.z < param3.minZ || param1.z > param3.maxZ)
                  {
                     return false;
                  }
                  continue;
            }
            if(_loc5_ < _loc6_)
            {
               if(_loc5_ > param4.min)
               {
                  param4.min = _loc5_;
               }
               if(_loc6_ < param4.max)
               {
                  param4.max = _loc6_;
               }
            }
            else
            {
               if(_loc6_ > param4.min)
               {
                  param4.min = _loc6_;
               }
               if(_loc5_ < param4.max)
               {
                  param4.max = _loc5_;
               }
            }
            if(param4.max < param4.min)
            {
               return false;
            }
         }
         return true;
      }
      
      private function §17§(param1:CollisionKdNode, param2:Vector3, param3:Vector3, param4:Vector3, param5:int, param6:Number, param7:Number, param8:IRayCollisionFilter, param9:RayHit) : Boolean
      {
         var _loc10_:Number = NaN;
         var _loc11_:CollisionKdNode = null;
         var _loc12_:Boolean = false;
         var _loc13_:CollisionKdNode = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:CollisionShape = null;
         if(param1.indices != null && this.§&!M§(param2,param4,param5,this.§var for implements§.staticChildren,param1.indices,param8,param9))
         {
            return true;
         }
         if(param1.axis == -1)
         {
            return false;
         }
         switch(param1.axis)
         {
            case 0:
               if(param4.x > -this.threshold && param4.x < this.threshold)
               {
                  _loc10_ = param7 + 1;
               }
               else
               {
                  _loc10_ = (param1.coord - param2.x) / param4.x;
               }
               _loc11_ = param3.x < param1.coord ? param1.negativeNode : param1.positiveNode;
               break;
            case 1:
               if(param4.y > -this.threshold && param4.y < this.threshold)
               {
                  _loc10_ = param7 + 1;
               }
               else
               {
                  _loc10_ = (param1.coord - param2.y) / param4.y;
               }
               _loc11_ = param3.y < param1.coord ? param1.negativeNode : param1.positiveNode;
               break;
            case 2:
               if(param4.z > -this.threshold && param4.z < this.threshold)
               {
                  _loc10_ = param7 + 1;
               }
               else
               {
                  _loc10_ = (param1.coord - param2.z) / param4.z;
               }
               _loc11_ = param3.z < param1.coord ? param1.negativeNode : param1.positiveNode;
         }
         if(_loc10_ < param6 || _loc10_ > param7)
         {
            return this.§17§(_loc11_,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         _loc12_ = this.§17§(_loc11_,param2,param3,param4,param5,param6,_loc10_,param8,param9);
         if(_loc12_)
         {
            return true;
         }
         this.§throw set switch§.x = param2.x + _loc10_ * param4.x;
         this.§throw set switch§.y = param2.y + _loc10_ * param4.y;
         this.§throw set switch§.z = param2.z + _loc10_ * param4.z;
         if(param1.splitTree != null)
         {
            _loc13_ = param1.splitTree.rootNode;
            while(_loc13_ != null && _loc13_.axis != -1)
            {
               switch(_loc13_.axis)
               {
                  case 0:
                     _loc13_ = this.§throw set switch§.x < _loc13_.coord ? _loc13_.negativeNode : _loc13_.positiveNode;
                     break;
                  case 1:
                     _loc13_ = this.§throw set switch§.y < _loc13_.coord ? _loc13_.negativeNode : _loc13_.positiveNode;
                     break;
                  case 2:
                     _loc13_ = this.§throw set switch§.z < _loc13_.coord ? _loc13_.negativeNode : _loc13_.positiveNode;
                     break;
               }
            }
            if(_loc13_ != null && _loc13_.indices != null)
            {
               _loc14_ = int(_loc13_.indices.length);
               _loc15_ = 0;
               while(_loc15_ < _loc14_)
               {
                  _loc16_ = this.§var for implements§.staticChildren[_loc13_.indices[_loc15_]];
                  if((_loc16_.collisionGroup & param5) != 0)
                  {
                     if(!(param8 != null && !param8.considerBody(_loc16_.body)))
                     {
                        param9.t = _loc16_.raycast(param2,param4,this.threshold,param9.normal);
                        if(param9.t >= 0)
                        {
                           param9.position.copy(this.§throw set switch§);
                           param9.shape = _loc16_;
                           return true;
                        }
                     }
                  }
                  _loc15_++;
               }
            }
         }
         return this.§17§(_loc11_ == param1.negativeNode ? param1.positiveNode : param1.negativeNode,param2,this.§throw set switch§,param4,param5,_loc10_,param7,param8,param9);
      }
      
      private function §&!M§(param1:Vector3, param2:Vector3, param3:int, param4:Vector.<CollisionShape>, param5:Vector.<int>, param6:IRayCollisionFilter, param7:RayHit) : Boolean
      {
         var _loc8_:CollisionShape = null;
         var _loc9_:Number = NaN;
         var _loc10_:int = int(param5.length);
         var _loc11_:Number = 1e+308;
         var _loc12_:int = 0;
         while(_loc12_ < _loc10_)
         {
            _loc8_ = param4[param5[_loc12_]];
            if((_loc8_.collisionGroup & param3) != 0)
            {
               if(!(param6 != null && !param6.considerBody(_loc8_.body)))
               {
                  _loc9_ = _loc8_.raycast(param1,param2,this.threshold,this.§??§);
                  if(_loc9_ > 0 && _loc9_ < _loc11_)
                  {
                     _loc11_ = _loc9_;
                     param7.shape = _loc8_;
                     param7.normal.x = this.§??§.x;
                     param7.normal.y = this.§??§.y;
                     param7.normal.z = this.§??§.z;
                  }
               }
            }
            _loc12_++;
         }
         if(_loc11_ == 1e+308)
         {
            return false;
         }
         param7.position.x = param1.x + param2.x * _loc11_;
         param7.position.y = param1.y + param2.y * _loc11_;
         param7.position.z = param1.z + param2.z * _loc11_;
         param7.t = _loc11_;
         return true;
      }
      
      public function §>!n§(param1:CollisionShape) : Boolean
      {
         return this.§if var set§(param1,this.§var for implements§.rootNode);
      }
      
      public function destroy() : void
      {
         if(this.§var for implements§ == null)
         {
            return;
         }
         var _loc1_:§6"d§ = null;
         this.§var for implements§.destroyTree();
         this.§var for implements§ = null;
         for each(_loc1_ in this.§5U§)
         {
            _loc1_.destroy();
         }
         this.§5U§.length = 0;
         this.§-!4§ = null;
      }
   }
}

