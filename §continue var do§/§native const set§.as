package §continue var do§
{
   public class §native const set§
   {
      private var §+!N§:int;
      
      private var _timeLimitInSec:int;
      
      public function §native const set§(param1:int = 0, param2:int = 0)
      {
         super();
         this.§+!N§ = param1;
         this._timeLimitInSec = param2;
      }
      
      public function get scoreLimit() : int
      {
         return this.§+!N§;
      }
      
      public function set scoreLimit(param1:int) : void
      {
         this.§+!N§ = param1;
      }
      
      public function get timeLimitInSec() : int
      {
         return this._timeLimitInSec;
      }
      
      public function set timeLimitInSec(param1:int) : void
      {
         this._timeLimitInSec = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "BattleLimits [";
         _loc1_ += "scoreLimit = " + this.scoreLimit + " ";
         _loc1_ += "timeLimitInSec = " + this.timeLimitInSec + " ";
         return _loc1_ + "]";
      }
   }
}

