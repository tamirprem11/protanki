package §]l§
{
   public class §const const set§
   {
      public static const OFF:§const const set§ = new §const const set§(0,"OFF");
      
      public static const IDLE:§const const set§ = new §const const set§(1,"IDLE");
      
      public static const HEALING:§const const set§ = new §const const set§(2,"HEALING");
      
      public static const DAMAGING:§const const set§ = new §const const set§(3,"DAMAGING");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §const const set§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§const const set§>
      {
         var _loc1_:Vector.<§const const set§> = new Vector.<§const const set§>();
         _loc1_.push(OFF);
         _loc1_.push(IDLE);
         _loc1_.push(HEALING);
         _loc1_.push(DAMAGING);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "IsisState [" + this._name + "]";
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

