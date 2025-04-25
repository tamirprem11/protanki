package §import const static§
{
   import projects.tanks.client.battleservice.model.statistics.§"W§;
   
   public class §!"T§
   {
      private var §,l§:int;
      
      private var §#"D§:int;
      
      private var _usersInfoBlue:Vector.<§"W§>;
      
      private var _usersInfoRed:Vector.<§"W§>;
      
      public function §!"T§(param1:int = 0, param2:int = 0, param3:Vector.<§"W§> = null, param4:Vector.<§"W§> = null)
      {
         super();
         this.§,l§ = param1;
         this.§#"D§ = param2;
         this._usersInfoBlue = param3;
         this._usersInfoRed = param4;
      }
      
      public function get blueScore() : int
      {
         return this.§,l§;
      }
      
      public function set blueScore(param1:int) : void
      {
         this.§,l§ = param1;
      }
      
      public function get redScore() : int
      {
         return this.§#"D§;
      }
      
      public function set redScore(param1:int) : void
      {
         this.§#"D§ = param1;
      }
      
      public function get §#!U§() : Vector.<§"W§>
      {
         return this._usersInfoBlue;
      }
      
      public function set §#!U§(param1:Vector.<§"W§>) : void
      {
         this._usersInfoBlue = param1;
      }
      
      public function get §8!o§() : Vector.<§"W§>
      {
         return this._usersInfoRed;
      }
      
      public function set §8!o§(param1:Vector.<§"W§>) : void
      {
         this._usersInfoRed = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "StatisticsTeamCC [";
         _loc1_ += "blueScore = " + this.blueScore + " ";
         _loc1_ += "redScore = " + this.redScore + " ";
         _loc1_ += "usersInfoBlue = " + this.§#!U§ + " ";
         _loc1_ += "usersInfoRed = " + this.§8!o§ + " ";
         return _loc1_ + "]";
      }
   }
}

