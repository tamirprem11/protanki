package alternativa.tanks.models.tank
{
   import alternativa.tanks.utils.DataUnitValidator;
   import alternativa.tanks.utils.DataValidator;
   import platform.client.fp10.core.type.AutoClosable;
   
   public class §`u§ implements AutoClosable
   {
      [Inject]
      public static var §null var extends§:DataValidator;
      
      private var §var const do§:DataUnitValidator;
      
      public function §`u§(param1:DataUnitValidator)
      {
         super();
         this.§var const do§ = param1;
         §null var extends§.addValidator(param1);
      }
      
      [Obfuscation(rename="false")]
      public function close() : void
      {
         §null var extends§.removeValidator(this.§var const do§);
         this.§var const do§ = null;
      }
   }
}

