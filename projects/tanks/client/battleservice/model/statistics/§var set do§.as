package projects.tanks.client.battleservice.model.statistics
{
   public class §var set do§
   {
      private var §catch const true§:int;
      
      private var _kills:int;
      
      private var _score:int;
      
      private var _user:String;
      
      public function §var set do§(param1:int = 0, param2:int = 0, param3:int = 0, param4:String = null)
      {
         super();
         this.§catch const true§ = param1;
         this._kills = param2;
         this._score = param3;
         this._user = param4;
      }
      
      public function get deaths() : int
      {
         return this.§catch const true§;
      }
      
      public function set deaths(param1:int) : void
      {
         this.§catch const true§ = param1;
      }
      
      public function get kills() : int
      {
         return this._kills;
      }
      
      public function set kills(param1:int) : void
      {
         this._kills = param1;
      }
      
      public function get score() : int
      {
         return this._score;
      }
      
      public function set score(param1:int) : void
      {
         this._score = param1;
      }
      
      public function get user() : String
      {
         return this._user;
      }
      
      public function set user(param1:String) : void
      {
         this._user = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "UserStat [";
         _loc1_ += "deaths = " + this.deaths + " ";
         _loc1_ += "kills = " + this.kills + " ";
         _loc1_ += "score = " + this.score + " ";
         _loc1_ += "user = " + this.user + " ";
         return _loc1_ + "]";
      }
   }
}

