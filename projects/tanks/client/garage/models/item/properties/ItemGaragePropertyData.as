package projects.tanks.client.garage.models.item.properties
{
   public class ItemGaragePropertyData
   {
      private var _property:ItemGarageProperty;
      
      private var _value:String;
      
      public function ItemGaragePropertyData(param1:ItemGarageProperty = null, param2:String = null)
      {
         super();
         this._property = param1;
         this._value = param2;
      }
      
      public function get property() : ItemGarageProperty
      {
         return this._property;
      }
      
      public function set property(param1:ItemGarageProperty) : void
      {
         this._property = param1;
      }
      
      public function get value() : String
      {
         return this._value;
      }
      
      public function set value(param1:String) : void
      {
         this._value = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "ItemGaragePropertyData [";
         _loc1_ += "property = " + this.property + " ";
         _loc1_ += "value = " + this.value + " ";
         return _loc1_ + "]";
      }
   }
}

