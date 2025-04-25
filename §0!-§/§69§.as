package §0!-§
{
   public class §69§
   {
      public static var CTF:§69§ = new §69§("CTF");
      
      public static var TDM:§69§ = new §69§("TDM");
      
      public static var DM:§69§ = new §69§("DM");
      
      public static var DOM:§69§ = new §69§("CP");
      
      public var name:String;
      
      public function §69§(param1:String)
      {
         super();
         this.name = param1;
      }
      
      public static function getType(param1:String) : §69§
      {
         if(param1 == "DM")
         {
            return DM;
         }
         if(param1 == "TDM")
         {
            return TDM;
         }
         if(param1 == "CTF")
         {
            return CTF;
         }
         if(param1 == "DOM")
         {
            return DOM;
         }
         return null;
      }
   }
}

