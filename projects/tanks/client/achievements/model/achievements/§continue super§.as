package projects.tanks.client.achievements.model.achievements
{
   public class §continue super§
   {
      public static const FIRST_RANK_UP:§continue super§ = new §continue super§(0,"FIRST_RANK_UP");
      
      public static const FIRST_PURCHASE:§continue super§ = new §continue super§(1,"FIRST_PURCHASE");
      
      public static const FIGHT_FIRST_BATTLE:§continue super§ = new §continue super§(2,"FIGHT_FIRST_BATTLE");
      
      public static const FIRST_DONATE:§continue super§ = new §continue super§(3,"FIRST_DONATE");
      
      public static const FIRST_REFERRAL:§continue super§ = new §continue super§(4,"FIRST_REFERRAL");
      
      public static const SET_EMAIL:§continue super§ = new §continue super§(5,"SET_EMAIL");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §continue super§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§continue super§>
      {
         var _loc1_:Vector.<§continue super§> = new Vector.<§continue super§>();
         _loc1_.push(FIRST_RANK_UP);
         _loc1_.push(FIRST_PURCHASE);
         _loc1_.push(FIGHT_FIRST_BATTLE);
         _loc1_.push(FIRST_DONATE);
         _loc1_.push(FIRST_REFERRAL);
         _loc1_.push(SET_EMAIL);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "Achievement [" + this._name + "]";
      }
      
      public function get value() : int
      {
         return this._value;
      }
      
      public function get name() : String
      {
         return this._name;
      }
   }
}

