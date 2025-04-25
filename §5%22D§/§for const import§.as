package §5"D§
{
   import § "V§.§?!l§;
   import § "V§.§implements var native§;
   import §<"N§.§default const static§;
   import §<"N§.§if continue§;
   import §<"N§.§super for static§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.CollisionDetector;
   import alternativa.physics.collision.IRayCollisionFilter;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.battle.BattleService;
   import alternativa.tanks.battle.§get var throw§;
   import alternativa.tanks.battle.§return final§;
   import alternativa.tanks.battle.scene3d.§,6§;
   import alternativa.tanks.battle.scene3d.§set while§;
   import alternativa.tanks.battle.§switch set use§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.utils.EncryptedInt;
   import alternativa.tanks.utils.EncryptedIntImpl;
   import §dynamic package§.§]"P§;
   import flash.errors.IllegalOperationError;
   
   public class §for const import§ extends §super for static§ implements §switch set use§, §set while§, §return final§, IRayCollisionFilter
   {
      [Inject]
      public static var battleService:BattleService;
      
      protected static const thousandth:EncryptedInt = new EncryptedIntImpl(1000);
      
      protected static const §%!I§:Matrix3 = new Matrix3();
      
      protected static const §2!5§:RayHit = new RayHit();
      
      protected static const §]h§:Vector3 = new Vector3();
      
      private static const §with switch§:Vector3 = new Vector3();
      
      private static const §static const if§:Vector3 = new Vector3();
      
      private const §dynamic var each§:Number = 2 * Math.PI / this.§ !`§();
      
      private var shotId:int;
      
      protected var § !y§:Boolean;
      
      protected var §1!f§:Boolean;
      
      protected var §include const use§:Body;
      
      protected var §switch if§:Number = 0;
      
      protected var §set for final§:Vector3 = new Vector3();
      
      protected var §;!e§:Vector3 = new Vector3();
      
      protected var §8!j§:Vector3 = new Vector3();
      
      protected var §#!!§:Vector3 = new Vector3();
      
      protected var §@"0§:Vector3 = new Vector3();
      
      protected var §,"C§:Vector.<Vector3>;
      
      protected var §"!J§:§implements var native§;
      
      public function §for const import§(param1:§default const static§)
      {
         super(param1);
         this.§,"C§ = new Vector.<Vector3>(this.§ !`§(),true);
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !`§())
         {
            this.§,"C§[_loc2_] = new Vector3();
            _loc2_++;
         }
      }
      
      private static function §#"P§(param1:Vector3, param2:Vector3) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Number = 10000000000;
         var _loc5_:Number = param1.x < 0 ? Number(-param1.x) : Number(param1.x);
         if(_loc5_ < _loc4_)
         {
            _loc4_ = _loc5_;
            _loc3_ = 0;
         }
         _loc5_ = param1.y < 0 ? Number(-param1.y) : Number(param1.y);
         if(_loc5_ < _loc4_)
         {
            _loc4_ = _loc5_;
            _loc3_ = 1;
         }
         _loc5_ = param1.z < 0 ? Number(-param1.z) : Number(param1.z);
         if(_loc5_ < _loc4_)
         {
            _loc3_ = 2;
         }
         if(_loc3_ == 0)
         {
            param2.reset(0,param1.z,-param1.y);
         }
         else if(_loc3_ == 1)
         {
            param2.reset(-param1.z,0,param1.x);
         }
         else if(_loc3_ == 2)
         {
            param2.reset(param1.y,-param1.x,0);
         }
      }
      
      protected function §`!t§() : §implements var native§
      {
         if(this.§ !y§)
         {
            return §?!l§.INSTANCE;
         }
         return §implements var native§(battleService.§#!o§().getObject(§implements var native§));
      }
      
      public function §for var true§(param1:§'!L§, param2:Vector3, param3:Body, param4:int = -1) : void
      {
         this.§switch if§ = 0;
         this.§1!f§ = true;
         this.shotId = param4;
         this.§ !y§ = param4 == -1;
         this.§#!!§.copy(param1.§#!!§);
         this.§;!e§.copy(param1.§for const for§);
         this.§8!j§.copy(param1.§for const for§);
         this.§set for final§.copy(param2);
         this.§include const use§ = param3;
         battleService.§try var final§().§static native§(this);
         battleService.§try var final§().§9"F§(this);
         battleService.§catch include§().§@!X§(this,0);
         this.§"!J§ = this.§`!t§();
         this.§"!J§.start(this.§;!e§,param2);
      }
      
      public function runBeforePhysicsUpdate(param1:Number) : void
      {
         if(this.§1!f§)
         {
            this.§1!f§ = false;
            this.§4&§(param1);
         }
         else
         {
            this.update(param1);
         }
      }
      
      private function §4&§(param1:Number) : void
      {
         if(!this.§>";§())
         {
            this.§dynamic var§(this.§;!e§,this.§set for final§);
            this.update(param1);
         }
      }
      
      protected function §>";§() : Boolean
      {
         var _loc1_:Body = null;
         var _loc2_:Vector3 = null;
         var _loc3_:CollisionDetector = battleService.§try var final§().§`"N§();
         §static const if§.diff(this.§;!e§,this.§#!!§);
         var _loc4_:Number = §static const if§.length();
         §static const if§.normalize();
         if(_loc3_.raycast(this.§#!!§,§static const if§,§]"P§.WEAPON,_loc4_,this,§2!5§))
         {
            _loc1_ = §2!5§.shape.body;
            if(_loc1_.tank == null)
            {
               §2!5§.position.subtract(§static const if§);
            }
            this.§super const native§(_loc1_,§2!5§.position,§static const if§,_loc4_);
            return true;
         }
         this.§dynamic var§(this.§#!!§,§static const if§);
         var _loc5_:int = 0;
         while(_loc5_ < this.§ !`§())
         {
            _loc2_ = this.§,"C§[_loc5_];
            if(_loc3_.raycast(_loc2_,§static const if§,§]"P§.WEAPON,_loc4_,this,§2!5§))
            {
               _loc1_ = §2!5§.shape.body;
               if(§#",§.§extends for use§(_loc1_))
               {
                  §]h§.copy(this.§#!!§).addScaled(§2!5§.t,§static const if§);
                  this.§super const native§(_loc1_,§]h§,§static const if§,_loc4_);
                  return true;
               }
            }
            _loc5_++;
         }
         return false;
      }
      
      protected function destroy() : void
      {
         battleService.§try var final§().§2"K§(this);
         battleService.§try var final§().§do for import§(this);
         battleService.§catch include§().§use const else§(this,0);
         this.§"!J§.destroy();
         recycle();
      }
      
      protected function §dynamic var§(param1:Vector3, param2:Vector3) : void
      {
         §#"P§(param2,§with switch§);
         §with switch§.normalize().scale(this.§use const default§());
         §%!I§.fromAxisAngle(param2,this.§dynamic var each§);
         Vector3(this.§,"C§[0]).sum(param1,§with switch§);
         var _loc3_:int = 1;
         while(_loc3_ < this.§ !`§())
         {
            §with switch§.transform3(§%!I§);
            Vector3(this.§,"C§[_loc3_]).sum(param1,§with switch§);
            _loc3_++;
         }
      }
      
      public function interpolatePhysicsState(param1:Number) : void
      {
         this.§@"0§.interpolate(param1,this.§8!j§,this.§;!e§);
      }
      
      public function considerBody(param1:Body) : Boolean
      {
         return this.§include const use§ != param1;
      }
      
      public function §throw for implements§() : int
      {
         return this.shotId;
      }
      
      protected function § !`§() : int
      {
         return 8;
      }
      
      protected function update(param1:Number) : void
      {
         throw new IllegalOperationError();
      }
      
      protected function §`"'§(param1:Body, param2:Vector3, param3:Vector3, param4:Number, param5:int) : void
      {
         throw new IllegalOperationError();
      }
      
      protected function §%! §(param1:Number) : int
      {
         return Math.round(§2!5§.t / param1 * §get var throw§.§ h§);
      }
      
      protected function §super const native§(param1:Body, param2:Vector3, param3:Vector3, param4:Number) : void
      {
         this.§`"'§(param1,param2,param3,this.§switch if§ + §2!5§.t,this.§%! §(param4));
      }
      
      protected function §use const default§() : Number
      {
         throw new IllegalOperationError();
      }
      
      public function render(param1:int, param2:int) : void
      {
         throw new IllegalOperationError();
      }
      
      protected function §const for set§() : §if continue§
      {
         return battleService.§#!o§();
      }
      
      protected function §'n§() : §,6§
      {
         return battleService.§catch include§();
      }
   }
}

