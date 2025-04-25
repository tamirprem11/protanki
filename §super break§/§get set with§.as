package §super break§
{
   public class §get set with§
   {
      private var §5@§:Vector.<String>;
      
      private var §1E§:Vector.<String>;
      
      public function §get set with§(param1:Vector.<String> = null, param2:Vector.<String> = null)
      {
         super();
         this.§5@§ = param1;
         this.§1E§ = param2;
      }
      
      public function get usersBlue() : Vector.<String>
      {
         return this.§5@§;
      }
      
      public function set usersBlue(param1:Vector.<String>) : void
      {
         this.§5@§ = param1;
      }
      
      public function get usersRed() : Vector.<String>
      {
         return this.§1E§;
      }
      
      public function set usersRed(param1:Vector.<String>) : void
      {
         this.§1E§ = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "TeamBattleItemCC [";
         _loc1_ += "usersBlue = " + this.usersBlue + " ";
         _loc1_ += "usersRed = " + this.usersRed + " ";
         return _loc1_ + "]";
      }
   }
}

