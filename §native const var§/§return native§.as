package §native const var§
{
   import alternativa.osgi.service.locale.ILocaleService;
   
   public class §return native§
   {
      [Inject]
      public static var localeService:ILocaleService;
      
      public var color:uint;
      
      private var §switch for class§:String;
      
      public function §return native§(param1:uint, param2:String)
      {
         super();
         this.color = param1;
         this.§switch for class§ = param2;
      }
      
      public function getMessage(param1:String) : String
      {
         return localeService.getText(this.§switch for class§).replace("{point}",param1);
      }
   }
}

