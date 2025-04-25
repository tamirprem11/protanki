package alternativa.tanks.models.weapon
{
   import alternativa.tanks.utils.EncryptedNumber;
   import alternativa.tanks.utils.EncryptedNumberImpl;
   
   public class §@!_§
   {
      private var coneAngle:EncryptedNumber;
      
      private var range:EncryptedNumber;
      
      public function §@!_§(param1:Number, param2:Number)
      {
         super();
         this.coneAngle = new EncryptedNumberImpl(param1);
         this.range = new EncryptedNumberImpl(param2);
      }
      
      public function §^1§() : Number
      {
         return this.coneAngle.getNumber();
      }
      
      public function §for set final§() : Number
      {
         return this.range.getNumber();
      }
   }
}

