package §if while§
{
   import §;">§.§get if§;
   import §;+§.§false const var§;
   import alternativa.math.Matrix3;
   import alternativa.math.Vector3;
   import alternativa.tanks.battle.§#",§;
   import alternativa.tanks.models.weapon.§'!L§;
   import alternativa.tanks.models.weapons.targeting.priority.§<!$§;
   
   public class §0_§
   {
      private const §]"N§:int = 16;
      
      private var §<B§:§<!$§;
      
      private var matrix:Matrix3 = new Matrix3();
      
      private var direction:Vector3 = new Vector3();
      
      private var §0!V§:Vector.<§get if§> = new Vector.<§get if§>();
      
      private var §8!7§:§""e§ = new §""e§();
      
      public function §0_§(param1:§<!$§)
      {
         super();
         this.§<B§ = param1;
      }
      
      public function §97§(param1:§'!L§, param2:Vector.<§false const var§>) : Vector.<§get if§>
      {
         var _loc3_:§false const var§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = Number.NEGATIVE_INFINITY;
         this.§0!V§.length = 0;
         this.§8!7§.clear();
         for each(_loc3_ in param2)
         {
            _loc4_ = _loc3_.§in var function§();
            while(!this.§8!7§.isEmpty() && _loc6_ < _loc4_)
            {
               _loc5_ = Math.min(this.§8!7§.§5"$§(),_loc4_);
               this.§extends const finally§(param1,_loc6_,_loc5_);
               this.§8!7§.§#!1§(_loc5_);
               _loc6_ = _loc5_;
            }
            _loc6_ = _loc4_;
            this.§8!7§.add(_loc3_);
         }
         while(!this.§8!7§.isEmpty())
         {
            _loc5_ = this.§8!7§.§5"$§();
            this.§extends const finally§(param1,_loc6_,_loc5_);
            this.§8!7§.§#!1§(_loc5_);
            _loc6_ = _loc5_;
         }
         return this.§0!V§;
      }
      
      private function §extends const finally§(param1:§'!L§, param2:Number, param3:Number) : void
      {
         var _loc4_:Vector3 = null;
         var _loc5_:Number = param3 - param2;
         var _loc6_:Number = _loc5_ / this.§]"N§;
         var _loc7_:Number = param2 + _loc6_ * 0.5;
         var _loc8_:Vector.<§false const var§> = this.§8!7§.§do set get§();
         this.matrix.fromAxisAngle(param1.§default var super§,_loc7_);
         this.matrix.transformVector(param1.direction,this.direction);
         this.matrix.fromAxisAngle(param1.§default var super§,_loc6_);
         var _loc9_:int = 0;
         while(_loc9_ < this.§]"N§)
         {
            this.§0!V§.push(new §get if§(this.direction,_loc7_,this.§<B§.§1!@§(_loc7_,_loc8_)));
            _loc4_ = §#",§.§for const finally§;
            _loc4_.copy(this.direction);
            this.matrix.transformVector(_loc4_,this.direction);
            _loc7_ += _loc6_;
            _loc9_++;
         }
         if(param2 <= 0 && 0 <= param3)
         {
            this.§0!V§.push(new §get if§(param1.direction,0,this.§<B§.§1!@§(0,_loc8_)));
         }
      }
   }
}

