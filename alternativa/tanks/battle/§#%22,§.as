package alternativa.tanks.battle
{
   import §-"@§.§4!k§;
   import §],§.§while var const§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.objects.tank.Tank;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   import flash.geom.Vector3D;
   import §import import§.§finally for false§;
   
   public class §#",§
   {
      [Inject]
      public static var battleService:BattleService;
      
      public static const §for const finally§:Vector3 = new Vector3();
      
      public static const §class super§:Matrix3 = new Matrix3();
      
      private static const §7!c§:EncryptedInt = new EncryptedIntImpl(100);
      
      private static const _direction:Vector3 = new Vector3();
      
      private static const §2!5§:RayHit = new RayHit();
      
      private static const §each for switch§:Number = 0.22;
      
      public function §#",§()
      {
         super();
      }
      
      public static function §8! §(param1:Number) : Number
      {
         return param1 * §7!c§.getInt();
      }
      
      public static function §5"d§(param1:§while var const§) : §while var const§
      {
         return param1 == §while var const§.BLUE ? §while var const§.RED : §while var const§.BLUE;
      }
      
      public static function §implements var return§(param1:§finally for false§) : Boolean
      {
         return param1 != null && isFinite(param1.x) && isFinite(param1.y) && isFinite(param1.z);
      }
      
      public static function §in for default§(param1:Vector3) : §finally for false§
      {
         return new §finally for false§(param1.x,param1.y,param1.z);
      }
      
      public static function §override for try§(param1:Vector3) : §finally for false§
      {
         return param1 == null ? null : new §finally for false§(param1.x,param1.y,param1.z);
      }
      
      public static function §use for get§(param1:Vector3, param2:§finally for false§) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      public static function §while for with§(param1:§finally for false§, param2:§finally for false§) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      public static function §include for super§(param1:§finally for false§) : Vector3
      {
         return new Vector3(param1.x,param1.y,param1.z);
      }
      
      public static function §do var var§(param1:§finally for false§) : Vector3
      {
         return param1 == null ? null : new Vector3(param1.x,param1.y,param1.z);
      }
      
      public static function §each for throw§(param1:§finally for false§, param2:Vector3) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      public static function §throw var extends§(param1:Vector3, param2:Vector3D) : void
      {
         param2.x = param1.x;
         param2.y = param1.y;
         param2.z = param1.z;
      }
      
      public static function globalToLocal(param1:Body, param2:Vector3) : void
      {
         param2.subtract(param1.state.position);
         param2.transformTransposed3(param1.baseMatrix);
      }
      
      public static function localToGlobal(param1:Body, param2:Vector3) : void
      {
         param2.transform3(param1.baseMatrix);
         param2.add(param1.state.position);
      }
      
      public static function §with catch§(param1:String, param2:Number = 0) : Number
      {
         var _loc3_:Number = Number(param1);
         return isNaN(_loc3_) ? Number(param2) : Number(_loc3_);
      }
      
      public static function §^!n§(param1:Object, param2:Array) : String
      {
         return "";
      }
      
      public static function §extends for use§(param1:Body) : Boolean
      {
         return param1 != null && param1.tank != null;
      }
      
      public static function §override case§(param1:Body, param2:§'!L§) : Boolean
      {
         var _loc3_:CollisionDetector = null;
         var _loc4_:Vector3 = param1.state.position;
         _direction.diff(param2.§#!!§,_loc4_);
         if(param1.scene != null)
         {
            _loc3_ = param1.scene.collisionDetector;
            return !_loc3_.raycastStatic(_loc4_,_direction,§]"P§.§return set for§,1,null,§2!5§);
         }
         return false;
      }
      
      public static function §function const each§(param1:§'!L§) : Boolean
      {
         var _loc2_:§throw const function§ = battleService.§try var final§().§`"N§();
         var _loc3_:Number = Vector3.distanceBetween(param1.§#!!§,param1.§for const for§);
         return _loc2_.raycastStatic(param1.§#!!§,param1.direction,§]"P§.§return set for§,_loc3_,null,§2!5§);
      }
      
      public static function §<!i§(param1:Tank) : §4!k§
      {
         var _loc2_:§4!k§ = new §4!k§();
         _loc2_.target = param1;
         _loc2_.position = §#",§.§in for default§(param1.§<J§().state.position);
         param1.§<J§().state.orientation.getEulerAngles(§for const finally§);
         _loc2_.orientation = §in for default§(§for const finally§);
         _loc2_.turretAngle = param1.§break var final§();
         return _loc2_;
      }
      
      public static function §for var var§(param1:Vector.<Tank>) : Vector.<§4!k§>
      {
         var _loc2_:Vector.<§4!k§> = new Vector.<§4!k§>(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_] = §<!i§(param1[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function §var set finally§(param1:§finally for false§) : Boolean
      {
         return isNaN(param1.x) || isNaN(param1.y) || isNaN(param1.z);
      }
      
      public static function § !<§(param1:Body) : Boolean
      {
         return param1.baseMatrix.m22 < §each for switch§;
      }
      
      public static function §]"M§(param1:Vector.<Vector3>) : Vector.<§finally for false§>
      {
         var _loc2_:Vector.<§finally for false§> = new Vector.<§finally for false§>(param1.length);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_] = §in for default§(param1[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
   }
}

