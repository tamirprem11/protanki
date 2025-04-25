package §false finally§
{
   public class §with const§
   {
      public static const ALL:§with const§ = new §with const§(0,"ALL");
      
      public static const FRIENDS_ONLY:§with const§ = new §with const§(1,"FRIENDS_ONLY");
      
      public static const NONE:§with const§ = new §with const§(2,"NONE");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §with const§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§with const§>
      {
         var _loc1_:Vector.<§with const§> = new Vector.<§with const§>();
         _loc1_.push(ALL);
         _loc1_.push(FRIENDS_ONLY);
         _loc1_.push(NONE);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "PersonalMessageReceiveMode [" + this._name + "]";
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

