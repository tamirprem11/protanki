package com.hurlant.math
{
   use namespace bi_internal;
   
   internal class BarrettReduction implements IReduction
   {
      private var m:BigInteger;
      
      private var r2:BigInteger;
      
      private var q3:BigInteger;
      
      private var mu:BigInteger;
      
      public function BarrettReduction(param1:BigInteger)
      {
         super();
         this.r2 = new BigInteger();
         this.q3 = new BigInteger();
         BigInteger.ONE.bi_internal::dlShiftTo(2 * param1.t,this.r2);
         this.mu = this.r2.divide(param1);
         this.m = param1;
      }
      
      public function revert(param1:BigInteger) : BigInteger
      {
         return param1;
      }
      
      public function mulTo(param1:BigInteger, param2:BigInteger, param3:BigInteger) : void
      {
         param1.bi_internal::multiplyTo(param2,param3);
         this.reduce(param3);
      }
      
      public function sqrTo(param1:BigInteger, param2:BigInteger) : void
      {
         param1.bi_internal::squareTo(param2);
         this.reduce(param2);
      }
      
      public function convert(param1:BigInteger) : BigInteger
      {
         var _loc2_:BigInteger = null;
         if(param1.bi_internal::s < 0 || param1.t > 2 * this.m.t)
         {
            return param1.mod(this.m);
         }
         if(param1.compareTo(this.m) < 0)
         {
            return param1;
         }
         _loc2_ = new BigInteger();
         param1.bi_internal::copyTo(_loc2_);
         this.reduce(_loc2_);
         return _loc2_;
      }
      
      public function reduce(param1:BigInteger) : void
      {
         var _loc2_:BigInteger = param1 as BigInteger;
         _loc2_.bi_internal::drShiftTo(this.m.t - 1,this.r2);
         if(_loc2_.t > this.m.t + 1)
         {
            _loc2_.t = this.m.t + 1;
            _loc2_.bi_internal::clamp();
         }
         this.mu.bi_internal::multiplyUpperTo(this.r2,this.m.t + 1,this.q3);
         this.m.bi_internal::multiplyLowerTo(this.q3,this.m.t + 1,this.r2);
         while(_loc2_.compareTo(this.r2) < 0)
         {
            _loc2_.bi_internal::dAddOffset(1,this.m.t + 1);
         }
         _loc2_.bi_internal::subTo(this.r2,_loc2_);
         while(_loc2_.compareTo(this.m) >= 0)
         {
            _loc2_.bi_internal::subTo(this.m,_loc2_);
         }
      }
   }
}

