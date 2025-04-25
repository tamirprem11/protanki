package §&S§
{
   public class §in const implements§
   {
      public static const NONE:§in const implements§ = new §in const implements§(0,"NONE");
      
      public static const HORNET_RAILGUN:§in const implements§ = new §in const implements§(1,"HORNET_RAILGUN");
      
      public static const WASP_RAILGUN:§in const implements§ = new §in const implements§(2,"WASP_RAILGUN");
      
      public static const HORNET_WASP_RAILGUN:§in const implements§ = new §in const implements§(3,"HORNET_WASP_RAILGUN");
      
      private var _value:int;
      
      private var _name:String;
      
      public function §in const implements§(param1:int, param2:String)
      {
         super();
         this._value = param1;
         this._name = param2;
      }
      
      public static function get values() : Vector.<§in const implements§>
      {
         var _loc1_:Vector.<§in const implements§> = new Vector.<§in const implements§>();
         _loc1_.push(NONE);
         _loc1_.push(HORNET_RAILGUN);
         _loc1_.push(WASP_RAILGUN);
         _loc1_.push(HORNET_WASP_RAILGUN);
         return _loc1_;
      }
      
      public function toString() : String
      {
         return "EquipmentConstraintsMode [" + this._name + "]";
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

