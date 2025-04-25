package §],§
{
   public class §while var const§
   {
      public static const RED:§while var const§ = new §while var const§(0,"RED");
      
      public static const BLUE:§while var const§ = new §while var const§(1,"BLUE");
      
      public static const NONE:§while var const§ = new §while var const§(2,"NONE");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §while var const§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§while var const§>
      {
         var _loc1_:Vector.<§while var const§> = new Vector.<§while var const§>();
         _loc1_.push(RED);
         _loc1_.push(BLUE);
         _loc1_.push(NONE);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "BattleTeam [" + this._name + "]";
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

