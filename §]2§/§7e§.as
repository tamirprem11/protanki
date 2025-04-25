package §]2§
{
   public class §7e§
   {
      private var §#^§:int;
      
      private var §in use§:int;
      
      public function §7e§(param1:int = 0, param2:int = 0)
      {
         super();
         this.§#^§ = param1;
         this.§in use§ = param2;
      }
      
      public function get max() : int
      {
         return this.§#^§;
      }
      
      public function set max(param1:int) : void
      {
         this.§#^§ = param1;
      }
      
      public function get min() : int
      {
         return this.§in use§;
      }
      
      public function set min(param1:int) : void
      {
         this.§in use§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "Range [";
         _loc1_ += "max = " + this.max + " ";
         _loc1_ += "min = " + this.min + " ";
         return _loc1_ + "]";
      }
   }
}

