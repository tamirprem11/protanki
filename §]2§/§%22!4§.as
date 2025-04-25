package §]2§
{
   public class §"!4§
   {
      public static const DM:§"!4§ = new §"!4§(0,"DM");
      
      public static const TDM:§"!4§ = new §"!4§(1,"TDM");
      
      public static const CTF:§"!4§ = new §"!4§(2,"CTF");
      
      public static const CP:§"!4§ = new §"!4§(3,"CP");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §"!4§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§"!4§>
      {
         var _loc1_:Vector.<§"!4§> = new Vector.<§"!4§>();
         _loc1_.push(DM);
         _loc1_.push(TDM);
         _loc1_.push(CTF);
         _loc1_.push(CP);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "BattleMode [" + this._name + "]";
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

