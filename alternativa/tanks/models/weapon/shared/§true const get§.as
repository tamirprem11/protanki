package alternativa.tanks.models.weapon.shared
{
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.physics.collision.types.RayHit;
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   import §dynamic package§.§]"P§;
   import §dynamic package§.§throw const function§;
   import flash.utils.Dictionary;
   
   public class §true const get§
   {
      private static const §0!j§:int = §]"P§.WEAPON;
      
      private static const origin:Vector3 = new Vector3();
      
      private var range:EncryptedNumber;
      
      private var § $§:EncryptedNumber;
      
      private var §const const native§:int;
      
      private var §,!;§:int;
      
      private var collisionDetector:§throw const function§;
      
      private var §&!V§:§true set var§;
      
      private const §include set import§:Vector3 = new Vector3();
      
      private const matrix:Matrix3 = new Matrix3();
      
      private const §super native§:Matrix3 = new Matrix3();
      
      private const §native for function§:RayHit = new RayHit();
      
      private const §implements const each§:§>W§ = new §>W§();
      
      private const §implements for use§:Vector3 = new Vector3();
      
      private const §for const for§:Vector3 = new Vector3();
      
      private var §9!k§:Dictionary;
      
      private var §;!g§:Dictionary;
      
      public function §true const get§(param1:Number, param2:Number, param3:int, param4:int, param5:§throw const function§, param6:§true set var§)
      {
         super();
         this.range = new EncryptedNumberImpl(param1);
         this.§ $§ = new EncryptedNumberImpl(0.5 * param2);
         this.§const const native§ = param3;
         this.§,!;§ = param4;
         this.collisionDetector = param5;
         this.§&!V§ = param6;
      }
      
      public function §case import§(param1:Body, param2:Number, param3:Number, param4:Vector3, param5:Vector3, param6:Vector3, param7:Vector.<Body>, param8:Vector.<Number>, param9:Vector.<Vector3>) : void
      {
         var _loc18_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:Number = NaN;
         this.§implements const each§.§#!T§ = param1;
         this.§9!k§ = new Dictionary();
         this.§;!g§ = new Dictionary();
         var _loc12_:Number = param3 * param2;
         var _loc13_:Number = param2 - _loc12_;
         if(this.collisionDetector.raycast(param4,param5,§0!j§,param2,this.§implements const each§,this.§native for function§) && this.§native for function§.shape.body.tank == null)
         {
            return;
         }
         this.§include set import§.copy(param6);
         this.§for const for§.copy(param4).addScaled(_loc12_,param5);
         var _loc14_:Number = this.range.getNumber() + _loc13_;
         this.§1!s§(this.§for const for§,param5,_loc14_);
         this.§super native§.fromAxisAngle(param5,Math.PI / this.§,!;§);
         var _loc15_:Number = this.§ $§.getNumber() / this.§const const native§;
         var _loc16_:int = 0;
         while(_loc16_ < this.§,!;§)
         {
            this.§1!k§(this.§for const for§,param5,this.§include set import§,_loc14_,this.§const const native§,_loc15_);
            this.§1!k§(this.§for const for§,param5,this.§include set import§,_loc14_,this.§const const native§,-_loc15_);
            this.§include set import§.transform3(this.§super native§);
            _loc16_++;
         }
         var _loc17_:int = 0;
         for(_loc18_ in this.§9!k§)
         {
            param7[_loc17_] = _loc18_;
            _loc11_ = this.§9!k§[_loc18_] - _loc13_;
            if(_loc11_ < 0)
            {
               _loc11_ = 0;
            }
            param8[_loc17_] = _loc11_;
            param9[_loc17_] = this.§;!g§[_loc18_];
            _loc17_++;
         }
         param7.length = _loc17_;
         param8.length = _loc17_;
         this.§implements const each§.§#!T§ = null;
         this.§implements const each§.§set for break§();
         this.§9!k§ = null;
      }
      
      private function §1!k§(param1:Vector3, param2:Vector3, param3:Vector3, param4:Number, param5:int, param6:Number) : void
      {
         var _loc7_:Number = 0;
         var _loc8_:int = 0;
         while(_loc8_ < param5)
         {
            _loc7_ += param6;
            this.matrix.fromAxisAngle(param3,_loc7_);
            this.matrix.transformVector(param2,this.§implements for use§);
            this.§1!s§(param1,this.§implements for use§,param4);
            _loc8_++;
         }
      }
      
      private function §1!s§(param1:Vector3, param2:Vector3, param3:Number) : void
      {
         var _loc4_:Body = null;
         var _loc5_:Number = NaN;
         origin.copy(param1);
         var _loc6_:Number = 0;
         if(this.collisionDetector.raycast(origin,param2,§0!j§,param3,this.§implements const each§,this.§native for function§))
         {
            _loc4_ = this.§native for function§.shape.body;
            if(_loc4_.tank != null && !§override for class§.§[c§(origin,this.§native for function§.position))
            {
               origin.addScaled(this.§native for function§.t,param2);
               _loc6_ += this.§native for function§.t;
               if(this.§&!V§.§in for import§(_loc4_))
               {
                  this.§implements const each§.§88§(_loc4_);
                  _loc5_ = Number(this.§9!k§[_loc4_]);
                  if(isNaN(_loc5_) || _loc5_ > _loc6_)
                  {
                     this.§9!k§[_loc4_] = _loc6_;
                     this.§;!g§[_loc4_] = this.§native for function§.position.clone();
                  }
               }
               else
               {
                  this.§implements const each§.§var for native§(_loc4_);
               }
            }
         }
         this.§implements const each§.§%?§();
      }
   }
}

