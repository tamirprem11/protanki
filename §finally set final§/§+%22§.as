package §finally set final§
{
   public class §+"§
   {
      public static const NORMAL:§+"§ = new §+"§(0,"NORMAL");
      
      public static const CRITICAL:§+"§ = new §+"§(1,"CRITICAL");
      
      public static const FATAL:§+"§ = new §+"§(2,"FATAL");
      
      public static const HEAL:§+"§ = new §+"§(3,"HEAL");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §+"§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get(param1:String) : §+"§
      {
         var _loc2_:§+"§ = null;
         switch(param1)
         {
            case "NORMAL":
               _loc2_ = NORMAL;
               break;
            case "CRITICAL":
               _loc2_ = CRITICAL;
               break;
            case "FATAL":
               _loc2_ = FATAL;
               break;
            case "HEAL":
               _loc2_ = HEAL;
         }
         return _loc2_;
      }
      
      public static function get values() : Vector.<§+"§>
      {
         var _loc1_:Vector.<§+"§> = new Vector.<§+"§>();
         _loc1_.push(NORMAL);
         _loc1_.push(CRITICAL);
         _loc1_.push(FATAL);
         _loc1_.push(HEAL);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "DamageIndicatorType [" + this._name + "]";
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

