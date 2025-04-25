package §8=§
{
   public class §import for null§
   {
      public static const AT_BASE:§import for null§ = new §import for null§(0,"AT_BASE");
      
      public static const DROPPED:§import for null§ = new §import for null§(1,"DROPPED");
      
      public static const CARRIED:§import for null§ = new §import for null§(2,"CARRIED");
      
      private var _value:int;
      
      private var §if set with§:String;
      
      public function §import for null§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this.§if set with§ = param2;
      }
      
      public function get value() : int
      {
         return this._value;
      }
      
      public function toString() : String
      {
         return "CTFFlagState [" + this.§if set with§ + "]";
      }
   }
}

