package scpacker.gui
{
   import platform.client.fp10.core.service.errormessage.errors.ErrorType;
   
   public class §set for true§ implements ErrorType
   {
      private var message:String;
      
      public function §set for true§(param1:String)
      {
         super();
         this.message = param1;
      }
      
      public function getMessage() : String
      {
         return this.message;
      }
   }
}

