package §null var else§
{
   import alternativa.math.Vector3;
   import alternativa.physics.Body;
   import alternativa.tanks.battle.§#",§;
   
   public class §case for false§
   {
      public var body:Body;
      
      public var §@"D§:Vector.<§`"f§>;
      
      public var §const const native§:int;
      
      public var §function set var§:int;
      
      public var § !8§:§var const import§;
      
      public var §4,§:Number = 0;
      
      public var §super for include§:int;
      
      public const §;7§:Vector3 = new Vector3();
      
      public function §case for false§(param1:Body, param2:int, param3:Vector3, param4:Number, param5:§var const import§, param6:int)
      {
         super();
         this.body = param1;
         this.§super for include§ = param6;
         this.§get const with§(param2,param3,param4,param5);
      }
      
      private function §get const with§(param1:int, param2:Vector3, param3:Number, param4:§var const import§) : void
      {
         var _loc5_:Vector3 = null;
         this.§const const native§ = param1;
         this.§ !8§ = param4;
         this.§@"D§ = new Vector.<§`"f§>(param1);
         var _loc6_:Number = param3 / (param1 - 1);
         var _loc7_:int = 0;
         while(_loc7_ < param1)
         {
            _loc5_ = new Vector3(param2.x,param2.y + 0.5 * param3 - _loc7_ * _loc6_,param2.z);
            this.§@"D§[_loc7_] = new §`"f§(this.body,_loc5_,Vector3.DOWN,param4);
            _loc7_++;
         }
      }
      
      public function each(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§const const native§)
         {
            §`"f§(this.§@"D§[_loc2_]).collisionGroup = param1;
            _loc2_++;
         }
      }
      
      public function §switch finally§() : Boolean
      {
         var _loc1_:§`"f§ = null;
         for each(_loc1_ in this.§@"D§)
         {
            if(_loc1_.§+"W§ && !§#",§.§extends for use§(_loc1_.§native for function§.shape.body))
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7!!§(param1:Number) : void
      {
         var _loc2_:§`"f§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         this.§function set var§ = 0;
         this.§;7§.x = 0;
         this.§;7§.y = 0;
         this.§;7§.z = 0;
         var _loc6_:Vector3 = this.body.state.velocity;
         var _loc7_:int = 0;
         while(_loc7_ < this.§const const native§)
         {
            _loc2_ = this.§@"D§[_loc7_];
            _loc2_.update(param1);
            if(_loc2_.§+"W§)
            {
               ++this.§function set var§;
               this.body.addWorldForceScaled(_loc2_.§true const else§(),_loc2_.§ !1§(),-_loc2_.§var continue§);
               this.§;7§.x += _loc2_.§super set null§.x;
               this.§;7§.y += _loc2_.§super set null§.y;
               this.§;7§.z += _loc2_.§super set null§.z;
               _loc3_ = _loc6_.x - _loc2_.§super set null§.x;
               _loc4_ = _loc6_.y - _loc2_.§super set null§.y;
               _loc5_ = _loc6_.z - _loc2_.§super set null§.z;
               _loc2_.speed = Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_ + _loc5_ * _loc5_);
            }
            else
            {
               _loc2_.speed = 0;
            }
            _loc7_++;
         }
         if(this.§function set var§ > 1)
         {
            this.§;7§.x /= this.§function set var§;
            this.§;7§.y /= this.§function set var§;
            this.§;7§.z /= this.§function set var§;
         }
      }
      
      public function §^!0§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4,§ < param1)
         {
            _loc3_ = this.§4,§ + param2;
            this.§4,§ = _loc3_ > param1 ? Number(param1) : Number(_loc3_);
         }
         else if(this.§4,§ > param1)
         {
            _loc3_ = this.§4,§ - param2;
            this.§4,§ = _loc3_ < param1 ? Number(param1) : Number(_loc3_);
         }
      }
   }
}

