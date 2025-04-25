package §7!-§
{
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   
   public class §while for try§
   {
      private var §finally var super§:EncryptedNumber;
      
      private var §super for else§:EncryptedNumber;
      
      private var minSplashDamagePercent:EncryptedNumber;
      
      private var §;#§:EncryptedNumber;
      
      public function §while for try§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.§finally var super§ = new EncryptedNumberImpl(param1);
         this.§super for else§ = new EncryptedNumberImpl(param2);
         this.minSplashDamagePercent = new EncryptedNumberImpl(param3);
         this.§;#§ = new EncryptedNumberImpl(param4);
      }
      
      public function §,"U§() : Number
      {
         return this.§super for else§.getNumber();
      }
      
      public function §do const class§(param1:Number) : Number
      {
         return this.§;#§.getNumber() * this.§use set var§(param1);
      }
      
      private function §use set var§(param1:Number) : Number
      {
         var _loc2_:Number = this.§finally var super§.getNumber();
         var _loc3_:Number = this.§super for else§.getNumber();
         var _loc4_:Number = this.minSplashDamagePercent.getNumber();
         if(param1 < _loc2_)
         {
            return 1;
         }
         if(param1 > _loc3_)
         {
            return 0.1 * _loc4_;
         }
         return 0.01 * (_loc4_ + (_loc3_ - param1) * (100 - _loc4_) / (_loc3_ - _loc2_));
      }
   }
}

