package §9!D§
{
   public class §3"Q§
   {
      public static const RED:§3"Q§ = new §3"Q§(0,"RED");
      
      public static const BLUE:§3"Q§ = new §3"Q§(1,"BLUE");
      
      public static const NEUTRAL:§3"Q§ = new §3"Q§(2,"NEUTRAL");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §3"Q§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§3"Q§>
      {
         var _loc1_:Vector.<§3"Q§> = new Vector.<§3"Q§>();
         _loc1_.push(RED);
         _loc1_.push(BLUE);
         _loc1_.push(NEUTRAL);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "ControlPointState [" + this._name + "]";
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

