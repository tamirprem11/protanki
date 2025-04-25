package §8!1§
{
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   
   public class §else for§
   {
      private var energyCapacity:EncryptedNumber;
      
      private var energyDischargeSpeed:EncryptedNumber;
      
      private var energyRechargeSpeed:EncryptedNumber;
      
      private var tickIntervalMsec:EncryptedNumber;
      
      public function §else for§(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.energyCapacity = new EncryptedNumberImpl(param1);
         this.energyDischargeSpeed = new EncryptedNumberImpl(param2);
         this.energyRechargeSpeed = new EncryptedNumberImpl(param3);
         this.tickIntervalMsec = new EncryptedNumberImpl(param4);
      }
      
      public function §each set if§() : Number
      {
         return this.energyCapacity.getNumber();
      }
      
      public function §use for with§() : Number
      {
         return this.energyDischargeSpeed.getNumber();
      }
      
      public function §catch for static§() : Number
      {
         return this.energyRechargeSpeed.getNumber();
      }
      
      public function §;<§() : Number
      {
         return this.tickIntervalMsec.getNumber();
      }
   }
}

