package alternativa.tanks.battle.objects.tank
{
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   
   public class §package const finally§ implements §'"Y§
   {
      private var currentValue:EncryptedNumber;
      
      private var §[Q§:EncryptedNumber;
      
      private var §"E§:Number;
      
      private var §catch const extends§:Number;
      
      public function §package const finally§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§"E§ = param1;
         this.§catch const extends§ = param2;
         this.§[Q§ = new EncryptedNumberImpl(param3);
         this.currentValue = new EncryptedNumberImpl(param4);
      }
      
      public function reset(param1:Number) : void
      {
         this.currentValue.setNumber(param1);
         this.§[Q§.setNumber(param1);
      }
      
      public function update(param1:Number) : Number
      {
         var _loc2_:Number = this.currentValue.getNumber();
         var _loc3_:Number = this.§[Q§.getNumber();
         if(_loc2_ < _loc3_)
         {
            _loc2_ += this.§"E§ * param1;
            if(_loc2_ > _loc3_)
            {
               _loc2_ = _loc3_;
            }
         }
         else if(_loc2_ > _loc3_)
         {
            _loc2_ -= this.§catch const extends§ * param1;
            if(_loc2_ < _loc3_)
            {
               _loc2_ = _loc3_;
            }
         }
         this.currentValue.setNumber(_loc2_);
         return _loc2_;
      }
      
      public function §class const break§(param1:Number) : void
      {
         this.§[Q§.setNumber(param1);
      }
      
      public function §="P§() : Number
      {
         return this.§[Q§.getNumber();
      }
   }
}

