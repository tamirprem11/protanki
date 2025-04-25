package projects.tanks.client.battleservice.model.statistics
{
   public class §^!`§
   {
      private var §`P§:int;
      
      private var §case set use§:int;
      
      private var _reward:int;
      
      private var _userId:String;
      
      public function §^!`§(param1:int = 0, param2:int = 0, param3:int = 0, param4:String = null)
      {
         super();
         this.§`P§ = param1;
         this.§case set use§ = param2;
         this._reward = param3;
         this._userId = param4;
      }
      
      public function get §var try§() : int
      {
         return this.§`P§;
      }
      
      public function set §var try§(param1:int) : void
      {
         this.§`P§ = param1;
      }
      
      public function get §try false§() : int
      {
         return this.§case set use§;
      }
      
      public function set §try false§(param1:int) : void
      {
         this.§case set use§ = param1;
      }
      
      public function get §package const static§() : int
      {
         return this._reward;
      }
      
      public function set §package const static§(param1:int) : void
      {
         this._reward = param1;
      }
      
      public function get userId() : String
      {
         return this._userId;
      }
      
      public function set userId(param1:String) : void
      {
         this._userId = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "UserReward [";
         _loc1_ += "newbiesAbonementBonusReward = " + this.§var try§ + " ";
         _loc1_ += "premiumBonusReward = " + this.§try false§ + " ";
         _loc1_ += "reward = " + this.§package const static§ + " ";
         _loc1_ += "userId = " + this.userId + " ";
         return _loc1_ + "]";
      }
   }
}

