package §super for switch§
{
   import projects.tanks.client.battleselect.model.info.BattleInfoUser;
   
   public class §implements const package§
   {
      private var _users:Vector.<BattleInfoUser>;
      
      public function §implements const package§(param1:Vector.<BattleInfoUser> = null)
      {
         super();
         this._users = param1;
      }
      
      public function get users() : Vector.<BattleInfoUser>
      {
         return this._users;
      }
      
      public function set users(param1:Vector.<BattleInfoUser>) : void
      {
         this._users = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "BattleDMInfoCC [";
         _loc1_ += "users = " + this.users + " ";
         return _loc1_ + "]";
      }
   }
}

