package §case else§
{
   public class §>!?§
   {
      public static const SUMMER:§>!?§ = new §>!?§(0,"SUMMER");
      
      public static const WINTER:§>!?§ = new §>!?§(1,"WINTER");
      
      public static const SPACE:§>!?§ = new §>!?§(2,"SPACE");
      
      public static const SUMMER_DAY:§>!?§ = new §>!?§(3,"SUMMER_DAY");
      
      public static const SUMMER_NIGHT:§>!?§ = new §>!?§(4,"SUMMER_NIGHT");
      
      public static const WINTER_DAY:§>!?§ = new §>!?§(5,"WINTER_DAY");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §>!?§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§>!?§>
      {
         var _loc1_:Vector.<§>!?§> = new Vector.<§>!?§>();
         _loc1_.push(SUMMER);
         _loc1_.push(WINTER);
         _loc1_.push(SPACE);
         _loc1_.push(SUMMER_DAY);
         _loc1_.push(SUMMER_NIGHT);
         _loc1_.push(WINTER_DAY);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "MapTheme [" + this._name + "]";
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

