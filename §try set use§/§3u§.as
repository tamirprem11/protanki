package §try set use§
{
   import projects.tanks.client.battlefield.models.bonus.battle.§case const else§;
   
   public class §3u§
   {
      private var §continue const static§:Number;
      
      private var _bonuses:Vector.<§case const else§>;
      
      public function §3u§(param1:Number = 0, param2:Vector.<§case const else§> = null)
      {
         super();
         this.§continue const static§ = param1;
         this._bonuses = param2;
      }
      
      public function get §use var case§() : Number
      {
         return this.§continue const static§;
      }
      
      public function set §use var case§(param1:Number) : void
      {
         this.§continue const static§ = param1;
      }
      
      public function get bonuses() : Vector.<§case const else§>
      {
         return this._bonuses;
      }
      
      public function set bonuses(param1:Vector.<§case const else§>) : void
      {
         this._bonuses = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "BattlefieldBonusesCC [";
         _loc1_ += "bonusFallSpeed = " + this.§use var case§ + " ";
         _loc1_ += "bonuses = " + this.bonuses + " ";
         return _loc1_ + "]";
      }
   }
}

