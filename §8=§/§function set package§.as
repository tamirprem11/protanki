package §8=§
{
   import §!"0§.§!]§;
   import §2L§.§%!x§;
   import §2L§.§%" §;
   import §],§.§while var const§;
   import §]2§.§"!4§;
   import alternativa.engine3d.lights.OmniLight;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.PhysicsMaterial;
   import alternativa.physics.ShapeContact;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.CollisionShape;
   import alternativa.physics.collision.primitives.CollisionBox;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§catch const class§;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§set while§;
   import alternativa.tanks.engine3d.§2!W§;
   import alternativa.tanks.engine3d.§package var package§;
   import alternativa.tanks.services.lightingeffects.ILightingEffectsService;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import §dynamic package§.§]"P§;
   
   public class §function set package§ implements §!]§, §catch const class§, §set while§
   {
      [Inject]
      public static var §extends var finally§:ILightingEffectsService;
      
      [Inject]
      public static var battleService:BattleService;
      
      private static const §import for import§:EncryptedInt = new EncryptedIntImpl(95);
      
      private static const §[%§:EncryptedInt = new EncryptedIntImpl(400);
      
      private static const contacts:Vector.<ShapeContact> = new Vector.<ShapeContact>();
      
      private static const §catch set function§:Vector3 = new Vector3();
      
      private static const §native for function§:RayHit = new RayHit();
      
      private static const §<&§:Vector3 = new Vector3();
      
      private static const §implements for use§:Vector3 = new Vector3();
      
      public var teamType:§while var const§;
      
      public var §<e§:CollisionShape;
      
      private var §%"D§:Tank;
      
      private var §6"H§:String;
      
      private var _state:§import for null§ = §import for null§.AT_BASE;
      
      private var §use const final§:Vector3;
      
      private var skin:§2!W§;
      
      private var startTime:int;
      
      private var §6d§:int = 1000;
      
      private var §1!5§:Number = 1;
      
      private var §in override§:Boolean;
      
      private var collisionDetector:CollisionDetector;
      
      private var callback:§^!$§;
      
      private var lightSource:OmniLight;
      
      public function §function set package§(param1:§while var const§, param2:Vector3, param3:int, param4:int, param5:§package var package§, param6:CollisionDetector, param7:§^!$§)
      {
         super();
         this.teamType = param1;
         this.§use const final§ = param2.clone();
         this._state = §import for null§.AT_BASE;
         this.collisionDetector = param6;
         this.callback = param7;
         this.createSkin(param3,param4,param5);
         this.§6"f§(param1);
         this.setPosition(param2);
         this.startTime = this.§6d§ * Math.random();
      }
      
      private function §6"f§(param1:§while var const§) : void
      {
         var _loc2_:§%" § = §extends var finally§.§function each§(§"!4§.CTF);
         var _loc3_:§%!x§ = _loc2_.§import var override§(param1);
         this.lightSource = new OmniLight(_loc3_.§with const final§(),_loc2_.§=!8§(),_loc2_.§6n§());
         this.lightSource.intensity = _loc3_.§"r§();
      }
      
      public function setAlphaMultiplier(param1:Number) : void
      {
         this.§1!5§ = param1 < 0.2 ? Number(0.2) : Number(param1);
         this.§+c§(this.§in override§ ? Number(0.5) : Number(1));
      }
      
      private function §+c§(param1:Number) : void
      {
         if(this._state == §import for null§.CARRIED)
         {
            this.skin.alpha = param1;
         }
         else
         {
            this.skin.alpha = this.§1!5§;
         }
      }
      
      public function readPosition(param1:Vector3) : void
      {
         param1.x = this.skin.x;
         param1.y = this.skin.y;
         param1.z = this.skin.z;
      }
      
      public function checkTrigger(param1:Body) : void
      {
         var _loc2_:CollisionShape = null;
         var _loc3_:ShapeContact = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= param1.numCollisionShapes)
            {
               return;
            }
            _loc2_ = param1.collisionShapes[0];
            this.collisionDetector.getContacts(_loc2_,this.§<e§,contacts);
            if(contacts.length > 0)
            {
               _loc3_ = contacts[0];
               §catch set function§.copy(_loc3_.position);
               §implements for use§.x = this.§<e§.transform.m03 - §catch set function§.x;
               §implements for use§.y = this.§<e§.transform.m13 - §catch set function§.y;
               §implements for use§.z = this.§<e§.transform.m23 - §catch set function§.z;
               if(!this.collisionDetector.raycastStatic(§catch set function§,§implements for use§,§]"P§.§return set for§,1,null,§native for function§))
               {
                  break;
               }
               §catch set function§.x = _loc2_.transform.m03;
               §catch set function§.y = _loc2_.transform.m13;
               §catch set function§.z = _loc2_.transform.m23;
               §implements for use§.x = this.§<e§.transform.m03 - §catch set function§.x;
               §implements for use§.y = this.§<e§.transform.m13 - §catch set function§.y;
               §implements for use§.z = this.§<e§.aabb.minZ - §catch set function§.z + 1;
               if(!this.collisionDetector.raycastStatic(§catch set function§,§implements for use§,§]"P§.§return set for§,1,null,§native for function§))
               {
                  break;
               }
            }
            _loc5_++;
         }
         _loc4_ = 0;
         while(_loc4_ < contacts.length)
         {
            _loc3_ = contacts[_loc4_];
            _loc3_.dispose();
            _loc4_++;
         }
         contacts.length = 0;
         this.callback.§5"c§(this);
      }
      
      public function render(param1:int, param2:int) : void
      {
         this.skin.§set const const§(int((param1 - this.startTime) / this.§6d§));
         if(this.§%"D§ != null)
         {
            this.§%"D§.§<M§().§default const each§(§<&§);
            §<&§.z -= 50;
            this.setPosition(§<&§);
         }
      }
      
      public function get §for var case§() : Tank
      {
         return this.§%"D§;
      }
      
      public function get §finally include§() : String
      {
         return this.§6"H§;
      }
      
      private function setPosition(param1:Vector3) : void
      {
         this.skin.x = param1.x;
         this.skin.y = param1.y;
         this.skin.z = param1.z;
         this.§<e§.transform.m03 = param1.x;
         this.§<e§.transform.m13 = param1.y;
         this.§<e§.transform.m23 = param1.z + 0.5 * §[%§.getInt();
         this.§<e§.calculateAABB();
         this.lightSource.x = param1.x;
         this.lightSource.y = param1.y;
         this.lightSource.z = param1.z + 0.75 * §[%§.getInt();
      }
      
      public function addToScene() : void
      {
         var _loc1_:§,6§ = battleService.§catch include§();
         _loc1_.addObject(this.skin);
         _loc1_.addObject(this.lightSource);
      }
      
      public function get state() : §import for null§
      {
         return this._state;
      }
      
      public function §7a§(param1:String, param2:Tank) : void
      {
         this.§in override§ = true;
         this.§switch for null§(param1,param2,0.5);
      }
      
      public function §0!G§(param1:String, param2:Tank) : void
      {
         this.§in override§ = false;
         this.§switch for null§(param1,param2,1);
      }
      
      private function §switch for null§(param1:String, param2:Tank, param3:Number) : void
      {
         this.§6"H§ = param1;
         this.§%"D§ = param2;
         this._state = §import for null§.CARRIED;
         if(param2 != null)
         {
            this.skin.visible = true;
            this.§+c§(param3);
         }
         else
         {
            this.skin.visible = false;
         }
      }
      
      public function § "9§() : void
      {
         this.reset(§import for null§.AT_BASE);
         this.setPosition(this.§use const final§);
      }
      
      public function §[F§(param1:Vector3) : void
      {
         this.reset(§import for null§.DROPPED);
         if(this.collisionDetector.raycastStatic(param1,new Vector3(0,0,-20000),§]"P§.§return set for§,1,null,§native for function§))
         {
            this.setPosition(§native for function§.position);
         }
         else
         {
            this.setPosition(param1);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§,6§ = battleService.§catch include§();
         _loc1_.removeObject(this.skin);
         _loc1_.removeObject(this.lightSource);
      }
      
      private function createSkin(param1:int, param2:int, param3:§package var package§) : void
      {
         var _loc4_:Number = param1 * §[%§.getInt() / param2;
         this.skin = new §2!W§(_loc4_,§[%§.getInt());
         this.skin.softAttenuation = 10;
         this.skin.§-c§(param3);
         this.skin.§set const const§(0);
         this.skin.originY = 1;
         param3.material.resolution = 1;
         this.§<e§ = new CollisionBox(new Vector3(0.5 * §import for import§.getInt(),0.5 * §import for import§.getInt(),0.5 * §[%§.getInt()),§]"P§.TANK,PhysicsMaterial.DEFAULT_MATERIAL);
      }
      
      private function reset(param1:§import for null§) : void
      {
         this._state = param1;
         this.§6"H§ = null;
         this.§%"D§ = null;
         this.§+c§(1);
         this.skin.visible = true;
      }
   }
}

