package §extends get§
{
   public class §,!U§
   {
      private var §return const continue§:int;
      
      private var §>v§:Number;
      
      public function §,!U§(param1:int = 0, param2:Number = 0)
      {
         super();
         this.§return const continue§ = param1;
         this.§>v§ = param2;
      }
      
      public function get chargingTimeMsec() : int
      {
         return this.§return const continue§;
      }
      
      public function set chargingTimeMsec(param1:int) : void
      {
         this.§return const continue§ = param1;
      }
      
      public function get weakeningCoeff() : Number
      {
         return this.§>v§;
      }
      
      public function set weakeningCoeff(param1:Number) : void
      {
         this.§>v§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "RailgunCC [";
         _loc1_ += "chargingTimeMsec = " + this.chargingTimeMsec + " ";
         _loc1_ += "weakeningCoeff = " + this.weakeningCoeff + " ";
         return _loc1_ + "]";
      }
   }
}

