package §`!D§
{
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public class §set each§
   {
      private var _autoBalance:Boolean;
      
      private var §&t§:Boolean;
      
      private var §2!F§:int;
      
      private var §if set for§:int;
      
      private var §5@§:Vector.<BattleInfoUser>;
      
      private var §1E§:Vector.<BattleInfoUser>;
      
      public function §set each§(param1:Boolean = false, param2:Boolean = false, param3:int = 0, param4:int = 0, param5:Vector.<BattleInfoUser> = null, param6:Vector.<BattleInfoUser> = null)
      {
         super();
         this._autoBalance = param1;
         this.§&t§ = param2;
         this.§2!F§ = param3;
         this.§if set for§ = param4;
         this.§5@§ = param5;
         this.§1E§ = param6;
      }
      
      public function get autoBalance() : Boolean
      {
         return this._autoBalance;
      }
      
      public function set autoBalance(param1:Boolean) : void
      {
         this._autoBalance = param1;
      }
      
      public function get friendlyFire() : Boolean
      {
         return this.§&t§;
      }
      
      public function set friendlyFire(param1:Boolean) : void
      {
         this.§&t§ = param1;
      }
      
      public function get scoreBlue() : int
      {
         return this.§2!F§;
      }
      
      public function set scoreBlue(param1:int) : void
      {
         this.§2!F§ = param1;
      }
      
      public function get scoreRed() : int
      {
         return this.§if set for§;
      }
      
      public function set scoreRed(param1:int) : void
      {
         this.§if set for§ = param1;
      }
      
      public function get usersBlue() : Vector.<BattleInfoUser>
      {
         return this.§5@§;
      }
      
      public function set usersBlue(param1:Vector.<BattleInfoUser>) : void
      {
         this.§5@§ = param1;
      }
      
      public function get usersRed() : Vector.<BattleInfoUser>
      {
         return this.§1E§;
      }
      
      public function set usersRed(param1:Vector.<BattleInfoUser>) : void
      {
         this.§1E§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "TeamBattleInfoCC [";
         _loc1_ += "autoBalance = " + this.autoBalance + " ";
         _loc1_ += "friendlyFire = " + this.friendlyFire + " ";
         _loc1_ += "scoreBlue = " + this.scoreBlue + " ";
         _loc1_ += "scoreRed = " + this.scoreRed + " ";
         _loc1_ += "usersBlue = " + this.usersBlue + " ";
         _loc1_ += "usersRed = " + this.usersRed + " ";
         return _loc1_ + "]";
      }
   }
}

